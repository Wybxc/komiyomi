import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'package:komiyomi/constants/layout.dart';
import 'package:komiyomi/graphql/generated/manga.graphql.dart';
import 'package:komiyomi/route.dart';
import 'package:komiyomi/widgets/backend_image.dart';
import 'package:komiyomi/widgets/error_message.dart';

class MangaGrid extends StatelessWidget {
  final List<Fragment$Manga> mangas;

  const MangaGrid({super.key, required this.mangas});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final columns = getGridColumns(constraints.maxWidth);
        final padding = getScreenPadding(constraints.maxWidth);

        return GridView.builder(
          padding: padding,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
            childAspectRatio: kGridAspectRatio,
            crossAxisSpacing: kSmallPadding,
            mainAxisSpacing: kSmallPadding,
          ),
          itemCount: mangas.length,
          itemBuilder: (context, index) {
            final manga = mangas[index];
            return MangaGridItem(manga: manga);
          },
        );
      },
    );
  }
}

typedef SourceMangasResult = Mutation$FetchSourceMangas$fetchSourceManga;

class MangaGridInfinite extends HookWidget {
  final PagingController<int, Fragment$Manga> pagingController;

  const MangaGridInfinite({
    super.key,
    required this.pagingController,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final columns = getGridColumns(constraints.maxWidth);
        final padding = getScreenPadding(constraints.maxWidth);

        return PagedGridView<int, Fragment$Manga>(
          pagingController: pagingController,
          padding: padding,
          showNewPageProgressIndicatorAsGridChild: false,
          builderDelegate: PagedChildBuilderDelegate<Fragment$Manga>(
            itemBuilder: (context, manga, index) => MangaGridItem(manga: manga),
            firstPageErrorIndicatorBuilder: (context) => ErrorMessage(
              error: pagingController.error as Exception,
              onRetry: () => pagingController.refresh(),
            ),
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
            childAspectRatio: kGridAspectRatio,
            crossAxisSpacing: kSmallPadding,
            mainAxisSpacing: kSmallPadding,
          ),
        );
      },
    );
  }
}

class MangaGridItem extends StatelessWidget {
  final Fragment$Manga manga;

  const MangaGridItem({super.key, required this.manga});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          context.router.push(MangaRoute(mangaId: manga.id));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: BackendImage(path: manga.thumbnailUrl)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                manga.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
