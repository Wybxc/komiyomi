// Flutter imports:

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:komiyomi/localizations.dart';
import 'package:komiyomi/providers/all_categories.dart';
import 'package:komiyomi/widgets/error_message.dart';
import 'package:komiyomi/widgets/manga_grid.dart';

@RoutePage()
class BookshelfPage extends HookConsumerWidget {
  const BookshelfPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final mangas = ref.watch(allCategoriesProvider);
    final refreshKey = useMemoized(() => GlobalKey<RefreshIndicatorState>());

    return mangas.when(
      data: (mangas) => Scaffold(
        appBar: AppBar(
          title: Text(l10n.bookshelf),
          actions: [RefetchButton(refreshIndicatorKey: refreshKey)],
        ),
        body: RefreshIndicator(
          key: refreshKey,
          onRefresh: ref.read(allCategoriesProvider.notifier).refetch,
          child: MangaGrid(mangas: mangas),
        ),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => ErrorMessage(
        error: error as Exception,
        onRetry: () => ref.read(allCategoriesProvider.notifier).refetch(),
      ),
    );
  }
}

class RefetchButton extends ConsumerWidget {
  const RefetchButton({super.key, required this.refreshIndicatorKey});

  final GlobalKey<RefreshIndicatorState> refreshIndicatorKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;

    return IconButton(
      icon: const Icon(Icons.refresh),
      onPressed: () => refreshIndicatorKey.currentState?.show(),
      tooltip: l10n.refresh,
    );
  }
}
