import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:komiyomi/providers/storage.dart';

part 'app_theme.g.dart';

@Riverpod(keepAlive: true)
class AppTheme extends _$AppTheme {
  static const _key = 'app_theme_mode';

  @override
  ThemeMode build() {
    final prefs = ref.watch(storageProvider);
    final value = prefs.getString(_key);
    return ThemeMode.values.firstWhere(
      (mode) => mode.name == value,
      orElse: () => ThemeMode.system,
    );
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    final prefs = ref.read(storageProvider);
    await prefs.setString(_key, mode.name);
    state = mode;
  }
}
