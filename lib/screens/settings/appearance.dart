import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:komiyomi/localizations.dart';
import 'package:komiyomi/providers/app_locale.dart';
import 'package:komiyomi/providers/app_theme.dart';

@RoutePage()
class AppearanceSettingsPage extends StatelessWidget {
  const AppearanceSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appearance),
        scrolledUnderElevation: 0,
      ),
      body: ListView(
        children: [
          Card(
            margin: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Consumer(
                  builder: (context, ref, _) {
                    final themeMode = ref.watch(appThemeProvider);
                    return ListTile(
                      leading: const Icon(Icons.dark_mode),
                      title: Text(l10n.darkMode),
                      subtitle: Text(_getThemeModeText(l10n, themeMode)),
                      onTap: () => showDialog(
                        context: context,
                        builder: (context) => ThemeModeSelector(l10n: l10n),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.language),
                  title: Text(l10n.language),
                  subtitle: Text(l10n.localeDisplayName),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => LocaleSelector(l10n: l10n),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

String _getThemeModeText(AppLocalizations l10n, ThemeMode mode) {
  switch (mode) {
    case ThemeMode.system:
      return l10n.themeSystem;
    case ThemeMode.light:
      return l10n.themeLight;
    case ThemeMode.dark:
      return l10n.themeDark;
  }
}

class ThemeModeSelector extends HookConsumerWidget {
  const ThemeModeSelector({
    super.key,
    required this.l10n,
  });

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.read(appThemeProvider.notifier);
    final currentMode = ref.watch(appThemeProvider);

    return AlertDialog(
      title: Text(l10n.darkMode),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: ThemeMode.values.map((mode) {
          return RadioListTile(
            title: Text(_getThemeModeText(l10n, mode)),
            value: mode,
            groupValue: currentMode,
            onChanged: (value) {
              if (value == null) return;
              themeNotifier.setThemeMode(value);
              Navigator.pop(context);
            },
          );
        }).toList(),
      ),
    );
  }
}

class LocaleSelector extends HookConsumerWidget {
  const LocaleSelector({
    super.key,
    required this.l10n,
  });

  final AppLocalizations l10n;

  // 过滤重复的语言设置
  List<Locale> _filterLocales(List<Locale> locales) {
    // 将所有区域设置按是否有国家代码分组
    final specificLocales = locales.where((l) => l.countryCode != null);
    final genericLocales = locales.where((l) => l.countryCode == null);

    // 如果某个语言已经有了具体的地区变体，则移除其通用版本
    return [
      ...specificLocales,
      ...genericLocales.where((generic) {
        return !specificLocales
            .any((specific) => specific.languageCode == generic.languageCode);
      }),
    ];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localeNotifier = ref.read(appLocaleProvider.notifier);
    final appLocale = Localizations.localeOf(context);
    final filteredLocales = _filterLocales(AppLocalizations.supportedLocales);

    return AlertDialog(
      title: Text(l10n.language),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: filteredLocales.map((locale) {
          final localizations = lookupAppLocalizations(locale);
          return RadioListTile(
            title: Text(localizations.localeDisplayName),
            value: locale.toString(),
            groupValue: appLocale.toString(),
            onChanged: (value) {
              if (value == null) return;
              localeNotifier.set(locale);
              Navigator.pop(context);
            },
          );
        }).toList(),
      ),
    );
  }
}
