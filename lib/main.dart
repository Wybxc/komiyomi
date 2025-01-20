import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:komiyomi/localizations.dart';
import 'package:komiyomi/providers/app_locale.dart';
import 'package:komiyomi/providers/app_theme.dart';
import 'package:komiyomi/providers/graphql.dart';
import 'package:komiyomi/providers/storage.dart';
import 'package:komiyomi/route.dart';

Future<void> main() async {
  final prefs = await SharedPreferencesWithCache.create(
    cacheOptions: SharedPreferencesWithCacheOptions(),
  );

  runApp(ProviderScope(
    overrides: [
      storageProvider.overrideWithValue(prefs),
    ],
    child: MainApp(),
  ));
}

class MainApp extends HookConsumerWidget {
  MainApp({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(appLocaleProvider);
    final themeMode = ref.watch(appThemeProvider);
    final loginStateNotifier = ref.watch(graphQLProvider);
    final loginStateListener = ref.read(loginStateListenerProvider);

    useEffect(() {
      final guard = AutoRouteGuard.simple(
        (resolver, router) {
          if (loginStateListener.isConnected ||
              resolver.routeName == LoginRoute.name) {
            resolver.next();
          } else {
            resolver.redirect(LoginRoute(onLogin: () => resolver.next()));
          }
        },
      );
      appRouter.guards.add(guard);
      return () => appRouter.guards.remove(guard);
    }, [loginStateNotifier]);

    return MaterialApp.router(
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
      scrollBehavior: CustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: themeMode,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale,
      routerConfig: appRouter.config(reevaluateListenable: loginStateListener),
    );
  }
}

class CustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.invertedStylus,
        PointerDeviceKind.trackpad,
        PointerDeviceKind.unknown,
      };
}
