import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:auto_route/auto_route.dart';
import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:komiyomi/constants/layout.dart';
import 'package:komiyomi/graphql/generated/manga.graphql.dart';
import 'package:komiyomi/graphql/generated/schema.graphql.dart';
import 'package:komiyomi/graphql/generated/update_manga_in_library.graphql.dart';
import 'package:komiyomi/localizations.dart';
import 'package:komiyomi/providers/graphql.dart';
import 'package:komiyomi/providers/manga_info.dart';
import 'package:komiyomi/widgets/backend_image.dart';
import 'package:komiyomi/widgets/chapter_list.dart';
import 'package:komiyomi/widgets/error_message.dart';

const _kSpacing = kStandardPadding;

// 提取通用 SnackBar 显示逻辑
void _showSnackBar(BuildContext context, String message,
    {SnackBarAction? action}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      behavior: SnackBarBehavior.floating,
      action: action,
      showCloseIcon: action == null,
    ),
  );
}

@RoutePage()
class MangaPage extends ConsumerWidget {
  const MangaPage({super.key, required this.mangaId});
  final int mangaId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manga = ref.watch(mangaInfoProvider(mangaId));
    final isWideScreen = checkLayout(
      MediaQuery.of(context).size.width,
      LayoutType.desktop,
      check: CheckLayoutType.atLeast,
    );

    return Scaffold(
      body: manga.when(
        data: (data) => MangaContentLayout(
          manga: data,
        ),
        error: (error, _) => ErrorMessage(
          error: error as Exception,
          onRetry: () => ref.refresh(mangaInfoProvider(mangaId)),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
      bottomNavigationBar: manga.maybeWhen(
        data: (data) => !isWideScreen
            ? MangaActionBar(manga: data, mangaId: mangaId)
            : null,
        orElse: () => null,
      ),
      floatingActionButton: manga.maybeWhen(
        data: (data) => isWideScreen
            ? ReadingButton(manga: data, isWideScreen: true)
            : null,
        orElse: () => null,
      ),
    );
  }
}

class MangaActionBar extends ConsumerWidget {
  const MangaActionBar({
    super.key,
    required this.manga,
    required this.mangaId,
  });

  final Fragment$MangaDetails manga;
  final int mangaId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final isWideScreen = checkLayout(
      MediaQuery.of(context).size.width,
      LayoutType.desktop,
      check: CheckLayoutType.atLeast,
    );

    final List<Widget> actions = [
      _ActionButton(
        icon: manga.inLibrary ? Icons.bookmark : Icons.bookmark_outline,
        tooltip: manga.inLibrary ? l10n.inLibrary : l10n.addToLibrary,
        onPressed: () => _toggleLibrary(context, ref, manga),
      ),
      _ActionButton(
        icon: Icons.refresh,
        tooltip: l10n.refresh,
        onPressed: () => ref.refresh(mangaInfoProvider(mangaId)),
      ),
      _ActionButton(
        icon: Icons.track_changes,
        tooltip: l10n.track,
        onPressed: () => debugPrint('Track manga ${manga.id}'),
      ),
    ];

    if (!isWideScreen) {
      actions.addAll([
        const Spacer(),
        ReadingButton(manga: manga, isWideScreen: false),
        const SizedBox(width: 4),
      ]);
    }

    return SafeArea(
      child: BottomAppBar(
        padding: const EdgeInsets.fromLTRB(4, 0, 4, 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: actions,
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.icon,
    required this.tooltip,
    required this.onPressed,
  });

  final IconData icon;
  final String tooltip;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      tooltip: tooltip,
      style: IconButton.styleFrom(
        minimumSize: const Size(48, 48),
      ),
    );
  }
}

class ReadingButton extends StatelessWidget {
  const ReadingButton({
    super.key,
    required this.manga,
    required this.isWideScreen,
  });

  final Fragment$MangaDetails manga;
  final bool isWideScreen;

  @override
  Widget build(BuildContext context) {
    return isWideScreen
        ? FloatingActionButton.extended(
            onPressed: () => debugPrint('Start reading manga ${manga.id}'),
            icon: const Icon(Icons.play_arrow),
            label: Text(AppLocalizations.of(context)!.startReading),
            extendedPadding: const EdgeInsets.symmetric(horizontal: 24),
          )
        : FloatingActionButton(
            onPressed: () => debugPrint('Start reading manga ${manga.id}'),
            tooltip: AppLocalizations.of(context)!.startReading,
            child: const Icon(Icons.play_arrow),
          );
  }
}

class MangaContentLayout extends StatelessWidget {
  const MangaContentLayout({
    super.key,
    required this.manga,
  });

  final Fragment$MangaDetails manga;

  @override
  Widget build(BuildContext context) {
    final isWide = checkLayout(
      MediaQuery.of(context).size.width,
      LayoutType.desktop,
      check: CheckLayoutType.atLeast,
    );

    if (isWide) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 2,
            child: Scaffold(
              body: SafeArea(
                bottom: false,
                child: MangaInfoSection(manga: manga),
              ),
              bottomNavigationBar: MangaActionBar(
                manga: manga,
                mangaId: manga.id,
              ),
            ),
          ),
          const VerticalDivider(width: 1),
          Flexible(
            flex: 3,
            child: ChapterSection(mangaId: manga.id),
          ),
        ],
      );
    }

    return SafeArea(
      bottom: false,
      child: CustomScrollView(
        slivers: [
          MangaAppBar(manga: manga),
          SliverPadding(
            padding: EdgeInsets.all(kStandardPadding),
            sliver: SliverToBoxAdapter(
              child: MangaInfo(manga: manga),
            ),
          ),
          const SliverToBoxAdapter(child: Divider(height: 32)),
          ChapterList(mangaId: manga.id),
        ],
      ),
    );
  }
}

class MangaInfoSection extends StatelessWidget {
  const MangaInfoSection({super.key, required this.manga});

  final Fragment$MangaDetails manga;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        MangaAppBar(manga: manga),
        SliverPadding(
          padding: const EdgeInsets.all(_kSpacing),
          sliver: SliverToBoxAdapter(
            child: MangaInfo(manga: manga),
          ),
        ),
      ],
    );
  }
}

class ChapterSection extends StatelessWidget {
  const ChapterSection({super.key, required this.mangaId});

  final int mangaId;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          const SizedBox(height: _kSpacing),
          Expanded(child: ChapterListBox(mangaId: mangaId)),
          const SizedBox(height: _kSpacing),
        ],
      ),
    );
  }
}

class MangaAppBar extends StatelessWidget {
  const MangaAppBar({super.key, required this.manga});
  final Fragment$MangaDetails manga;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return SliverAppBar(
      expandedHeight: kExpandedAppBarHeight,
      pinned: true,
      scrolledUnderElevation: 0,
      title: Text(manga.title, overflow: TextOverflow.ellipsis),
      flexibleSpace: FlexibleSpaceBar(
        background: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Colors.black, Colors.transparent],
          ).createShader(bounds),
          blendMode: BlendMode.dstIn,
          child: BackendImage(path: manga.thumbnailUrl),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.copy),
          tooltip: l10n.copyTitle,
          onPressed: () => _copyToClipboard(context, manga.title),
        ),
        if (manga.realUrl != null)
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            tooltip: l10n.moreOptions,
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () => _launchUrl(context, manga.realUrl!),
                child: Row(
                  children: [
                    const Icon(Icons.open_in_new, size: 20),
                    const SizedBox(width: 8),
                    Text(l10n.openInBrowser),
                  ],
                ),
              ),
            ],
          ),
      ],
    );
  }
}

class MangaInfo extends ConsumerWidget {
  const MangaInfo({super.key, required this.manga});
  final Fragment$MangaDetails manga;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final genre = manga.genre.where((tag) => tag.isNotEmpty).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MangaInfoRow(label: l10n.authorLabel, value: manga.author),
        MangaInfoRow(label: l10n.artistLabel, value: manga.artist),
        MangaInfoRow(
            label: l10n.statusLabel,
            value: _getMangaStatus(manga.status, l10n)),
        MangaInfoRow(label: l10n.sourceLabel, value: manga.source?.displayName),
        if (manga.description != null)
          MangaInfoGroup(
            title: l10n.introduction,
            child: Text(manga.description!,
                style: Theme.of(context).textTheme.bodyMedium),
          ),
        if (genre.isNotEmpty)
          MangaInfoGroup(
            title: l10n.tags,
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: genre.map((tag) => Chip(label: Text(tag))).toList(),
            ),
          ),
      ],
    );
  }
}

class MangaInfoGroup extends StatelessWidget {
  const MangaInfoGroup({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),
        child,
      ],
    );
  }
}

class MangaInfoRow extends StatelessWidget {
  const MangaInfoRow({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    if (value == null || value!.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(label, style: Theme.of(context).textTheme.bodyMedium),
          ),
          Expanded(
            child: Text(value!, style: Theme.of(context).textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }
}

Future<void> _toggleLibrary(
    BuildContext context, WidgetRef ref, Fragment$MangaDetails manga) async {
  final client = ref.read(graphQLProvider)?.client;
  if (client == null) return;

  final l10n = AppLocalizations.of(context)!;
  final wasInLibrary = manga.inLibrary;

  try {
    await _updateLibraryStatus(client, manga.id, !wasInLibrary);

    if (!context.mounted) return;

    final message =
        wasInLibrary ? l10n.removedFromLibrary : l10n.addedToLibrary;
    _showSnackBar(
      context,
      message,
      action: SnackBarAction(
        label: l10n.undo,
        onPressed: () async {
          try {
            await _updateLibraryStatus(client, manga.id, wasInLibrary);
          } catch (e) {
            if (context.mounted) {
              _showSnackBar(context, e.toString());
            }
          }
        },
      ),
    );
  } catch (e) {
    if (context.mounted) {
      _showSnackBar(context, e.toString());
    }
  }
}

// 提取更新库状态逻辑
Future<void> _updateLibraryStatus(
    GraphQLClient client, int mangaId, bool inLibrary) async {
  await client.mutate$UpdateMangaInLibrary(
    Options$Mutation$UpdateMangaInLibrary(
      variables: Variables$Mutation$UpdateMangaInLibrary(
        id: mangaId,
        inLibrary: inLibrary,
      ),
    ),
  );
}

String? _getMangaStatus(Enum$MangaStatus status, AppLocalizations l10n) {
  return switch (status) {
    Enum$MangaStatus.ONGOING => l10n.mangaStatusOngoing,
    Enum$MangaStatus.COMPLETED => l10n.mangaStatusCompleted,
    Enum$MangaStatus.LICENSED => l10n.mangaStatusLicensed,
    Enum$MangaStatus.PUBLISHING_FINISHED => l10n.mangaStatusPublishingFinished,
    Enum$MangaStatus.CANCELLED => l10n.mangaStatusCancelled,
    Enum$MangaStatus.ON_HIATUS => l10n.mangaStatusOnHiatus,
    _ => null,
  };
}

void _copyToClipboard(BuildContext context, String text) async {
  final l10n = AppLocalizations.of(context)!;
  try {
    await Clipboard.setData(ClipboardData(text: text));
    if (context.mounted) {
      _showSnackBar(context, l10n.copyToClipboard);
    }
  } catch (e) {
    debugPrint('${l10n.copyFailed}: $e');
  }
}

void _launchUrl(BuildContext context, String url) async {
  final l10n = AppLocalizations.of(context)!;
  try {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  } catch (e) {
    if (context.mounted) {
      _showSnackBar(context, l10n.openUrlError(e.toString()));
    }
  }
}
