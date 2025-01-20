import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:komiyomi/graphql/generated/sources_list.graphql.dart';
import 'package:komiyomi/providers/preferences.dart';
import 'package:komiyomi/providers/sources_list.dart';
import 'package:komiyomi/route.dart';
import 'package:komiyomi/widgets/backend_image.dart';
import 'package:komiyomi/widgets/error_message.dart';

const _languageNames = {
  'zh': '中文',
  'en': '英语',
  'ja': '日语',
  'ko': '韩语',
  'other': '其他',
};

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('暂无可用源', style: Theme.of(context).textTheme.bodyLarge),
    );
  }
}

class LanguageSection extends StatelessWidget {
  final String langCode;
  final List<Fragment$Source> sources;
  final bool showNsfw;

  const LanguageSection({
    super.key,
    required this.langCode,
    required this.sources,
    required this.showNsfw,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,
      color: colorScheme.secondaryContainer.withAlpha(76),
      child: Column(
        children: [
          LanguageHeader(langCode: langCode),
          ...sources
              .where((s) => showNsfw || !s.isNsfw)
              .map((source) => SourceTile(source: source)),
        ],
      ),
    );
  }
}

class LanguageHeader extends StatelessWidget {
  final String langCode;

  const LanguageHeader({super.key, required this.langCode});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.translate,
        color: Theme.of(context).colorScheme.secondary,
      ),
      title: Text(
        _languageNames[langCode] ?? langCode.toUpperCase(),
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}

class SourceTile extends StatelessWidget {
  final Fragment$Source source;

  const SourceTile({super.key, required this.source});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ListTile(
      leading: IconBackendImage(
        path: source.iconUrl,
        size: 40,
        errorIcon: Icons.source,
      ),
      title: Text(
        source.displayName,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(source.$extension.pkgName),
          if (source.isNsfw)
            Container(
              margin: const EdgeInsets.only(top: 4),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.red.withAlpha(26),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'NSFW',
                style: TextStyle(
                  color: colorScheme.error,
                  fontSize: 12,
                ),
              ),
            ),
        ],
      ),
      onTap: () => context.router.push(SourceRoute(sourceId: source.id)),
    );
  }
}

final shownLangsProvider = StateProvider<List<String>>((ref) => ['zh', 'en']);

@RoutePage()
class SourceBrowsePage extends ConsumerWidget {
  const SourceBrowsePage({super.key});

  Map<String, List<Fragment$Source>> _groupSourcesByLang(
      List<Fragment$Source> sources) {
    return groupBy(
        sources, (source) => source.lang.isEmpty ? 'other' : source.lang);
  }

  bool _shouldShowLanguage(String langKey, List<String> shownLangs) {
    return langKey == 'other' || shownLangs.contains(langKey);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sources = ref.watch(sourcesListProvider);
    final shownLangs = ref.watch(shownLangsProvider);
    final showNsfw = ref.watch(showNsfwProvider);

    return sources.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => ErrorMessage(error: error as Exception),
      data: (sources) {
        if (sources.isEmpty) {
          return const EmptyView();
        }

        final sourcesByLang = _groupSourcesByLang(sources);
        return CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final entries = sourcesByLang.entries
                        .sorted((a, b) => a.key.compareTo(b.key))
                        .where((e) => _shouldShowLanguage(e.key, shownLangs))
                        .toList();
                    final entry = entries[index];
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: index < entries.length - 1 ? 16.0 : 0,
                      ),
                      child: LanguageSection(
                        langCode: entry.key,
                        sources: entry.value,
                        showNsfw: showNsfw,
                      ),
                    );
                  },
                  childCount: sourcesByLang.entries
                      .where((e) => _shouldShowLanguage(e.key, shownLangs))
                      .length,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
