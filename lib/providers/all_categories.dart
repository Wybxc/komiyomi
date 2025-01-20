import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:komiyomi/graphql/generated/manga.graphql.dart';
import 'package:komiyomi/providers/graphql.dart';

part 'all_categories.g.dart';

@riverpod
ObservableQuery<Query$AllCategories>? allCategoriesQuery(Ref ref) =>
    ref.watch(graphQLProvider)?.client.watchQuery$AllCategories();

@riverpod
class AllCategories extends _$AllCategories {
  @override
  Stream<List<Fragment$Manga>> build() async* {
    final query = ref.watch(allCategoriesQueryProvider);
    if (query == null) return;

    query.fetchResults();
    await for (final result in query.stream) {
      if (result.hasException) {
        throw result.exception!;
      }

      final data = result.parsedData;
      if (data == null) continue;

      yield data.categories.nodes
          .expand((category) => category.mangas.nodes)
          .toList();
    }
  }

  Future<void> refetch() async {
    final query = ref.read(allCategoriesQueryProvider);
    if (query == null) return;

    await query.refetch();
  }
}
