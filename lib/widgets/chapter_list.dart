import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:komiyomi/constants/layout.dart';
import 'package:komiyomi/graphql/generated/chapter_list.graphql.dart';
import 'package:komiyomi/localizations.dart';
import 'package:komiyomi/providers/chapter_list.dart';
import 'package:komiyomi/providers/chapter_options.dart';
import 'package:komiyomi/widgets/error_message.dart';

// 提取常量
const double _kCardHeight = 64.0;

// 基础章节列表组件
class _BaseChapterList extends ConsumerWidget {
  const _BaseChapterList({
    required this.mangaId,
    required this.builder,
    required this.isSliver,
  });

  final int mangaId;
  final bool isSliver;
  final Widget Function(
    List<Fragment$Chapter> chapters,
    ChapterOptions options,
    VoidCallback onRefetch,
    bool isSliver,
  ) builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chapters = ref.watch(chapterListProvider(mangaId));
    final options = ref.watch(chapterOptionsNotifierProvider(mangaId));

    return chapters.when(
      data: (chapters) => builder(
        chapters,
        options,
        ref.read(chapterListProvider(mangaId).notifier).refetch,
        isSliver,
      ),
      loading: () => isSliver
          ? const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            )
          : const Center(child: CircularProgressIndicator()),
      error: (error, _) => isSliver
          ? SliverFillRemaining(
              child: ErrorMessage(
                error: error as Exception,
                onRetry: () =>
                    ref.read(chapterListProvider(mangaId).notifier).refetch(),
              ),
            )
          : ErrorMessage(
              error: error as Exception,
              onRetry: () =>
                  ref.read(chapterListProvider(mangaId).notifier).refetch(),
            ),
    );
  }
}

class ChapterList extends StatelessWidget {
  const ChapterList({super.key, required this.mangaId});
  final int mangaId;

  @override
  Widget build(BuildContext context) {
    return _BaseChapterList(
      mangaId: mangaId,
      isSliver: true,
      builder: (chapters, options, onRefetch, isSliver) => _ChapterListContent(
        chapters: chapters,
        options: options,
        onRefetch: onRefetch,
        isSliver: isSliver,
      ),
    );
  }
}

class ChapterListBox extends StatelessWidget {
  const ChapterListBox({super.key, required this.mangaId});
  final int mangaId;

  @override
  Widget build(BuildContext context) {
    return _BaseChapterList(
      mangaId: mangaId,
      isSliver: false,
      builder: (chapters, options, onRefetch, isSliver) => _ChapterListContent(
        chapters: chapters,
        options: options,
        onRefetch: onRefetch,
        isSliver: isSliver,
      ),
    );
  }
}

// 统一的内容展示组件
class _ChapterListContent extends StatelessWidget {
  const _ChapterListContent({
    required this.chapters,
    required this.options,
    required this.onRefetch,
    required this.isSliver,
  });

  final List<Fragment$Chapter> chapters;
  final ChapterOptions options;
  final VoidCallback onRefetch;
  final bool isSliver;

  @override
  Widget build(BuildContext context) {
    if (chapters.isEmpty) {
      final emptyState = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.book_outlined,
                size: 48,
                color: Theme.of(context).colorScheme.onSurfaceVariant),
            const SizedBox(height: 8),
            Text(AppLocalizations.of(context)!.noChapters,
                style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      );

      return isSliver ? SliverToBoxAdapter(child: emptyState) : emptyState;
    }

    final header = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ChapterHeader(
          chapterCount: chapters.length,
          onRefresh: onRefetch,
        ),
        const Divider(height: 1),
      ],
    );

    final grid = ChapterGrid(
      chapters: chapters,
      options: options,
      isSliver: isSliver,
    );

    if (isSliver) {
      return SliverMainAxisGroup(
        slivers: [
          SliverToBoxAdapter(child: header),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: grid,
          ),
        ],
      );
    }

    return Column(
      children: [
        header,
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: grid,
          ),
        ),
      ],
    );
  }
}

// 统一的网格展示组件
class ChapterGrid extends HookWidget {
  const ChapterGrid({
    super.key,
    required this.chapters,
    required this.options,
    required this.isSliver,
  });

  final List<Fragment$Chapter> chapters;
  final ChapterOptions options;
  final bool isSliver;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final columns = getGridColumns(width).clamp(1, 3);
    getScreenPadding(width);

    final delegate = SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: columns,
      mainAxisExtent: _kCardHeight,
      crossAxisSpacing: kSmallPadding,
      mainAxisSpacing: kSmallPadding,
    );

    itemBuilder(BuildContext context, int index) => KeepAliveChapterCard(
          key: ValueKey(chapters[index].id),
          chapter: chapters[index],
          showChapterNumber: options.showChapterNumber,
          onTap: () {/* TODO: 章节点击处理 */},
        );

    if (isSliver) {
      return SliverGrid(
        gridDelegate: delegate,
        delegate: SliverChildBuilderDelegate(
          itemBuilder,
          childCount: chapters.length,
          addAutomaticKeepAlives: true,
        ),
      );
    }

    return GridView.builder(
      gridDelegate: delegate,
      itemCount: chapters.length,
      itemBuilder: itemBuilder,
    );
  }
}

class KeepAliveChapterCard extends HookWidget {
  const KeepAliveChapterCard({
    super.key,
    required this.chapter,
    required this.showChapterNumber,
    required this.onTap,
  });

  final Fragment$Chapter chapter;
  final bool showChapterNumber;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();

    return ChapterCard(
      chapter: chapter,
      showChapterNumber: showChapterNumber,
      onTap: onTap,
    );
  }
}

// 优化ChapterCard的构建
class ChapterCard extends StatelessWidget {
  const ChapterCard({
    super.key,
    required this.chapter,
    this.showChapterNumber = true,
    this.onTap,
  });

  final Fragment$Chapter chapter;
  final bool showChapterNumber;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Card(
      child: ListTile(
        onTap: onTap,
        dense: true,
        title: Text(
          chapter.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: showChapterNumber
            ? Text(
                l10n.chapterNum(_formatChapterNumber(chapter.chapterNumber)),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              )
            : null,
      ),
    );
  }

  String _formatChapterNumber(double number) {
    return number % 1 == 0 ? number.toInt().toString() : number.toString();
  }
}

// 优化Header按钮组
class ChapterHeader extends StatelessWidget {
  const ChapterHeader({
    super.key,
    required this.chapterCount,
    required this.onRefresh,
  });

  final int chapterCount;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return ListTile(
      title: Text(
        l10n.chaptersCount(chapterCount),
        style: Theme.of(context).textTheme.titleMedium,
      ),
      trailing: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 200),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _HeaderIconButton(
              icon: Icons.refresh,
              onPressed: onRefresh,
              tooltip: l10n.refresh,
            ),
            _HeaderIconButton(
              icon: Icons.done_all,
              onPressed: () {/* TODO: 标记全部已读 */},
              tooltip: l10n.markAllAsRead,
            ),
            _HeaderIconButton(
              icon: Icons.download,
              onPressed: () {/* TODO: 下载功能 */},
              tooltip: l10n.download,
            ),
            _HeaderIconButton(
              icon: Icons.filter_list,
              onPressed: () {/* TODO: 过滤选项 */},
              tooltip: l10n.filter,
            ),
          ],
        ),
      ),
    );
  }
}

class _HeaderIconButton extends StatelessWidget {
  const _HeaderIconButton({
    required this.icon,
    required this.onPressed,
    required this.tooltip,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final String tooltip;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: onPressed,
      tooltip: tooltip,
    );
  }
}
