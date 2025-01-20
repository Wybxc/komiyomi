import 'dart:ui';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:komiyomi/localizations.dart';
import 'package:komiyomi/providers/storage.dart';

part 'app_locale.g.dart';

const String _languageKey = 'locale_language';
const String _countryKey = 'locale_country';

@riverpod
class AppLocale extends _$AppLocale {
  @override
  Locale build() {
    final language = ref.watch(strPrefProvider(_languageKey));
    final country = ref.watch(strPrefProvider(_countryKey));

    // 如果有保存的设置，使用保存的设置
    if (language != null) {
      return Locale(language, country);
    }

    // 否则使用系统设置
    final List<Locale> systemLocales = PlatformDispatcher.instance.locales;
    return systemLocales.firstWhere(
      AppLocalizations.supportedLocales.contains,
      orElse: () => const Locale('en'),
    );
  }

  Future<void> set(Locale locale) async {
    final languageNotifier = ref.read(strPrefProvider(_languageKey).notifier);
    final countryNotifier = ref.read(strPrefProvider(_countryKey).notifier);

    await languageNotifier.set(locale.languageCode);
    await countryNotifier.set(locale.countryCode);
    state = locale;
  }
}
