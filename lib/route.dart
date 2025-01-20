import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:komiyomi/screens/bookshelf.dart';
import 'package:komiyomi/screens/browse.dart';
import 'package:komiyomi/screens/browse/extension.dart';
import 'package:komiyomi/screens/browse/migration.dart';
import 'package:komiyomi/screens/browse/source.dart';
import 'package:komiyomi/screens/downloads.dart';
import 'package:komiyomi/screens/home.dart';
import 'package:komiyomi/screens/login.dart';
import 'package:komiyomi/screens/manga.dart';
import 'package:komiyomi/screens/settings.dart';
import 'package:komiyomi/screens/settings/appearance.dart';
import 'package:komiyomi/screens/settings/browse.dart';
import 'package:komiyomi/screens/settings/data.dart';
import 'package:komiyomi/screens/source.dart';
import 'package:komiyomi/screens/updates.dart';

part 'route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(page: BookshelfRoute.page),
            AutoRoute(page: UpdatesRoute.page),
            AutoRoute(
              page: BrowseRoute.page,
              children: [
                AutoRoute(page: SourceBrowseRoute.page),
                AutoRoute(page: MigrationBrowseRoute.page),
                AutoRoute(page: ExtensionBrowseRoute.page),
              ],
            ),
            AutoRoute(page: DownloadsRoute.page),
            AutoRoute(page: SettingsRoute.page),
          ],
        ),
        AutoRoute(page: MangaRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: SourceRoute.page),
        AutoRoute(page: AppearanceSettingsRoute.page),
        AutoRoute(page: BrowseSettingsRoute.page),
        AutoRoute(page: DataSettingsRoute.page),
      ];

  @override
  late final List<AutoRouteGuard> guards = [];
}
