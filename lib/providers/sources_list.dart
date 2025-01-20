import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:komiyomi/graphql/generated/sources_list.graphql.dart';
import 'package:komiyomi/providers/graphql.dart';

part 'sources_list.g.dart';

@riverpod
ObservableQuery<Query$SourcesList>? sourcesListQuery(Ref ref) =>
    ref.watch(graphQLProvider)?.client.watchQuery$SourcesList();

@riverpod
class SourcesList extends _$SourcesList {
  @override
  Stream<List<Fragment$Source>> build() async* {
    final query = ref.watch(sourcesListQueryProvider);
    if (query == null) return;

    query.fetchResults();
    await for (final result in query.stream) {
      if (result.hasException) throw result.exception!;

      final data = result.parsedData;
      if (data != null) {
        yield data.sources.nodes;
      }
    }
  }
}
