import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:komiyomi/providers/storage.dart';

part 'preferences.g.dart';

@riverpod
class ShowNsfw extends _$ShowNsfw {
  static const String key = 'show_nsfw';

  @override
  bool build() => ref.watch(boolPrefProvider(key)) ?? false;

  Future<void> set(bool value) async {
    await ref.read(boolPrefProvider(key).notifier).set(value);
    state = value;
  }

  Future<void> toggle() => set(!state);
}
