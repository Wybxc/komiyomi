import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'storage.g.dart';

@riverpod
SharedPreferencesWithCache storage(Ref ref) {
  throw UnimplementedError();
}

@riverpod
class StrPref extends _$StrPref {
  @override
  String? build(String key) {
    final prefs = ref.watch(storageProvider);
    return prefs.getString(key);
  }

  Future<void> set(String? value) async {
    final prefs = ref.watch(storageProvider);
    if (value == null) {
      await prefs.remove(key);
    } else {
      await prefs.setString(key, value);
    }
  }
}

@riverpod
class BoolPref extends _$BoolPref {
  @override
  bool? build(String key) {
    final prefs = ref.watch(storageProvider);
    return prefs.getBool(key);
  }

  Future<void> set(bool? value) async {
    final prefs = ref.watch(storageProvider);
    if (value == null) {
      await prefs.remove(key);
    } else {
      await prefs.setBool(key, value);
    }
  }
}
