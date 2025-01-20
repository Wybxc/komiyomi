import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:komiyomi/graphql/generated/chapter_list.graphql.dart';
import 'package:komiyomi/graphql/generated/schema.graphql.dart';
import 'package:komiyomi/providers/graphql.dart';

part 'chapter_list.g.dart';
part 'chapter_list.freezed.dart';

@freezed
class ChapterListOptions with _$ChapterListOptions {
  const factory ChapterListOptions({
    @Default(Enum$ChapterOrderBy.CHAPTER_NUMBER) Enum$ChapterOrderBy? orderBy,
    @Default(Enum$SortOrder.DESC) Enum$SortOrder? orderByType,
  }) = _ChapterListOptions;
}

@riverpod
ObservableQuery<Query$ChapterList>? chapterListQuery(
  Ref ref,
  int mangaId, {
  ChapterListOptions options = const ChapterListOptions(),
}) =>
    ref.watch(graphQLProvider)?.client.watchQuery$ChapterList(
          WatchOptions$Query$ChapterList(
            variables: Variables$Query$ChapterList(
              mangaId: mangaId,
              orderBy: options.orderBy,
              orderByType: options.orderByType,
            ),
          ),
        );

@riverpod
class ChapterList extends _$ChapterList {
  @override
  Stream<List<Fragment$Chapter>> build(
    int mangaId, {
    ChapterListOptions options = const ChapterListOptions(),
  }) async* {
    final query =
        ref.watch(chapterListQueryProvider(mangaId, options: options));
    if (query == null) return;

    query.fetchResults();
    await for (final result in query.stream) {
      if (result.hasException) throw result.exception!;

      final data = result.parsedData;
      if (data != null) {
        var chapters = data.chapters.nodes;
        if (chapters.isEmpty) {
          await _fetch(ref, mangaId);
          await query.refetch();
        } else {
          yield chapters;
        }
      }
    }
  }

  static Future<void> _fetch(Ref ref, int mangaId) async {
    final client = ref.read(graphQLProvider)!.client;
    final response = await client.mutate$FetchChapterList(
      Options$Mutation$FetchChapterList(
        variables: Variables$Mutation$FetchChapterList(
          mangaId: mangaId,
        ),
      ),
    );
    if (response.hasException) throw response.exception!;
  }

  Future<void> refetch() async {
    final query = ref.read(chapterListQueryProvider(mangaId));

    await _fetch(ref, mangaId);
    await query?.refetch();
  }
}
