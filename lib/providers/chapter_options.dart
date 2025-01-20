import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:komiyomi/graphql/generated/chapter_list.graphql.dart';
import 'package:komiyomi/graphql/generated/schema.graphql.dart';

// Project imports:

part 'chapter_options.g.dart';

class ChapterOptions {
  final bool showChapterNumber;
  final bool sortDescending;
  final bool showDownloadedOnly;
  final bool showUnreadOnly;
  final bool showBookmarkedOnly;

  const ChapterOptions({
    this.showChapterNumber = true,
    this.sortDescending = true,
    this.showDownloadedOnly = false,
    this.showUnreadOnly = false,
    this.showBookmarkedOnly = false,
  });

  ChapterOptions copyWith({
    bool? showChapterNumber,
    bool? sortDescending,
    bool? showDownloadedOnly,
    bool? showUnreadOnly,
    bool? showBookmarkedOnly,
  }) {
    return ChapterOptions(
      showChapterNumber: showChapterNumber ?? this.showChapterNumber,
      sortDescending: sortDescending ?? this.sortDescending,
      showDownloadedOnly: showDownloadedOnly ?? this.showDownloadedOnly,
      showUnreadOnly: showUnreadOnly ?? this.showUnreadOnly,
      showBookmarkedOnly: showBookmarkedOnly ?? this.showBookmarkedOnly,
    );
  }

  Enum$ChapterOrderBy get orderBy => sortDescending
      ? Enum$ChapterOrderBy.CHAPTER_NUMBER
      : Enum$ChapterOrderBy.UPLOAD_DATE;

  Enum$SortOrder get orderByType =>
      sortDescending ? Enum$SortOrder.DESC : Enum$SortOrder.ASC;

  Variables$Query$ChapterList toQueryVariables(int mangaId) {
    return Variables$Query$ChapterList(
      mangaId: mangaId,
      orderBy: orderBy,
      orderByType: orderByType,
    );
  }
}

@riverpod
class ChapterOptionsNotifier extends _$ChapterOptionsNotifier {
  @override
  ChapterOptions build(int mangaId) {
    return const ChapterOptions();
  }

  void toggleShowChapterNumber() {
    state = state.copyWith(showChapterNumber: !state.showChapterNumber);
  }

  void toggleSortOrder() {
    state = state.copyWith(sortDescending: !state.sortDescending);
  }

  void toggleDownloadedOnly() {
    state = state.copyWith(showDownloadedOnly: !state.showDownloadedOnly);
  }

  void toggleUnreadOnly() {
    state = state.copyWith(showUnreadOnly: !state.showUnreadOnly);
  }

  void toggleBookmarkedOnly() {
    state = state.copyWith(showBookmarkedOnly: !state.showBookmarkedOnly);
  }

  void applyFilter(Variables$Query$ChapterList variables) {
    // 应用过滤条件...
  }
}
