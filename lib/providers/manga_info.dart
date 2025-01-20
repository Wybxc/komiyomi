import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:komiyomi/graphql/generated/manga.graphql.dart';
import 'graphql.dart';

part 'manga_info.g.dart';

@riverpod
ObservableQuery<Query$MangaInfo>? mangaInfoQuery(Ref ref, int mangaId) => ref
    .watch(graphQLProvider)
    ?.client
    .watchQuery$MangaInfo(WatchOptions$Query$MangaInfo(
      variables: Variables$Query$MangaInfo(id: mangaId),
    ));

@riverpod
class MangaInfo extends _$MangaInfo {
  @override
  Stream<Fragment$MangaDetails> build(int mangaId) async* {
    final query = ref.watch(mangaInfoQueryProvider(mangaId));
    if (query == null) return;

    query.fetchResults();
    await for (final result in query.stream) {
      if (result.hasException) throw result.exception!;

      final data = result.parsedData;
      if (data != null) {
        var manga = data.manga;
        if (!manga.initialized) manga = await _fetch(ref, mangaId);
        yield manga;
      }
    }
  }

  static Future<Fragment$MangaDetails> _fetch(Ref ref, int mangaId) async {
    final client = ref.read(graphQLProvider)!.client;
    final response = await client.mutate$FetchMangaInfo(
      Options$Mutation$FetchMangaInfo(
        variables: Variables$Mutation$FetchMangaInfo(id: mangaId),
      ),
    );
    if (response.hasException) throw response.exception!;
    return response.parsedData!.fetchManga!.manga;
  }

  Future<void> refetch() async {
    final query = ref.read(mangaInfoQueryProvider(mangaId));

    await _fetch(ref, mangaId);
    await query?.refetch();
  }
}
