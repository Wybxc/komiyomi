import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:komiyomi/constants/layout.dart';
import 'package:komiyomi/graphql/generated/manga.graphql.dart';
import 'package:komiyomi/graphql/generated/schema.graphql.dart';
import 'package:komiyomi/hooks/use_paging_controller.dart';
import 'package:komiyomi/providers/graphql.dart';
import 'package:komiyomi/widgets/manga_grid.dart';

typedef FetchSourceMangaType = Enum$FetchSourceMangaType;

const _kSearchBarRadius = 50.0;

@RoutePage()
class SourcePage extends HookWidget {
  const SourcePage({super.key, required this.sourceId});

  final String sourceId;

  Future<void> _handleSearch(
    BuildContext context, {
    required ValueNotifier<String?> searchState,
    required ValueNotifier<FetchSourceMangaType> typeState,
  }) async {
    final result = await showSearch(
      context: context,
      delegate: _SourceSearchDelegate(),
    );

    if (result?.isNotEmpty ?? false) {
      searchState.value = result;
      typeState.value = FetchSourceMangaType.SEARCH;
    }
  }

  @override
  Widget build(BuildContext context) {
    final typeState = useState(FetchSourceMangaType.POPULAR);
    final searchQueryState = useState<String?>(null);
    final isWide = checkLayout(
      MediaQuery.of(context).size.width,
      LayoutType.tablet,
      check: CheckLayoutType.atLeast,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Source'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: '搜索漫画',
            onPressed: () => _handleSearch(
              context,
              searchState: searchQueryState,
              typeState: typeState,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          _TypeSelector(
            isWide: isWide,
            typeState: typeState,
            searchState: searchQueryState,
          ),
          Expanded(
            child: _SourceMangaGrid(
              sourceId: sourceId,
              type: typeState.value,
              searchQuery: searchQueryState.value,
            ),
          ),
        ],
      ),
    );
  }
}

class _TypeSelector extends StatelessWidget {
  const _TypeSelector({
    required this.isWide,
    required this.typeState,
    required this.searchState,
  });

  final bool isWide;
  final ValueNotifier<FetchSourceMangaType> typeState;
  final ValueNotifier<String?> searchState;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isWide
          ? AlignmentDirectional.centerStart
          : AlignmentDirectional.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kStandardPadding,
          vertical: kSmallPadding,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: isWide ? kMaxSegmentedButtonWidth : double.infinity,
          ),
          child: _ContentTypeSelector(
            selectedType: typeState.value,
            onTypeChanged: (type) {
              typeState.value = type;
              searchState.value = null;
            },
          ),
        ),
      ),
    );
  }
}

class _ContentTypeSelector extends StatelessWidget {
  const _ContentTypeSelector({
    required this.selectedType,
    required this.onTypeChanged,
  });

  final FetchSourceMangaType selectedType;
  final ValueChanged<FetchSourceMangaType> onTypeChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SegmentedButton<FetchSourceMangaType>(
        segments:
            ContentType.values.map((type) => type.toButtonSegment()).toList(),
        selected: {selectedType},
        onSelectionChanged: (selected) => onTypeChanged(selected.first),
      ),
    );
  }
}

class _SourceMangaGrid extends HookConsumerWidget {
  const _SourceMangaGrid({
    required this.sourceId,
    required this.type,
    this.searchQuery,
  });

  final String sourceId;
  final FetchSourceMangaType type;
  final String? searchQuery;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(graphQLProvider)?.client;
    final onPageRequest = useCallback((controller, pageKey) async {
      final response = await client!.mutate$FetchSourceMangas(
        Options$Mutation$FetchSourceMangas(
          variables: Variables$Mutation$FetchSourceMangas(
            input: Input$FetchSourceMangaInput(
              page: pageKey,
              source: sourceId,
              type: type,
              query: searchQuery,
            ),
          ),
        ),
      );
      if (response.hasException) throw response.exception!;

      final result = response.parsedData!.fetchSourceManga!;
      if (result.hasNextPage) {
        controller.appendPage(result.mangas, pageKey + 1);
      } else {
        controller.appendLastPage(result.mangas);
      }
    }, [client, sourceId, type, searchQuery]);
    final pagingController = usePagingController<Fragment$Manga>(onPageRequest);

    if (client == null) return const Center(child: CircularProgressIndicator());
    return MangaGridInfinite(pagingController: pagingController);
  }
}

enum ContentType {
  popular(Icons.favorite, 'Popular', FetchSourceMangaType.POPULAR),
  latest(Icons.new_releases, 'Latest', FetchSourceMangaType.LATEST);

  const ContentType(this.icon, this.label, this.fetchType);

  final IconData icon;
  final String label;
  final FetchSourceMangaType fetchType;

  ButtonSegment<FetchSourceMangaType> toButtonSegment() {
    return ButtonSegment<FetchSourceMangaType>(
      value: fetchType,
      icon: Icon(icon),
      label: Text(label),
    );
  }
}

class _SourceSearchDelegate extends SearchDelegate {
  @override
  ThemeData appBarTheme(BuildContext context) {
    final theme = Theme.of(context);
    return theme.copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: theme.colorScheme.surface,
        foregroundColor: theme.colorScheme.onSurface,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(_kSearchBarRadius),
        ),
        filled: true,
        fillColor: theme.colorScheme.surfaceContainerHighest,
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          tooltip: '清除',
          onPressed: () => query = '',
        ),
      ];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        tooltip: '返回',
        onPressed: () => close(context, null),
      );

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        '搜索: $query',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) => const SizedBox.shrink();
}
