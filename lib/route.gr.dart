// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'route.dart';

/// generated route for
/// [AppearanceSettingsPage]
class AppearanceSettingsRoute extends PageRouteInfo<void> {
  const AppearanceSettingsRoute({List<PageRouteInfo>? children})
      : super(
          AppearanceSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppearanceSettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AppearanceSettingsPage();
    },
  );
}

/// generated route for
/// [BookshelfPage]
class BookshelfRoute extends PageRouteInfo<void> {
  const BookshelfRoute({List<PageRouteInfo>? children})
      : super(
          BookshelfRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookshelfRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BookshelfPage();
    },
  );
}

/// generated route for
/// [BrowsePage]
class BrowseRoute extends PageRouteInfo<void> {
  const BrowseRoute({List<PageRouteInfo>? children})
      : super(
          BrowseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BrowseRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BrowsePage();
    },
  );
}

/// generated route for
/// [BrowseSettingsPage]
class BrowseSettingsRoute extends PageRouteInfo<void> {
  const BrowseSettingsRoute({List<PageRouteInfo>? children})
      : super(
          BrowseSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BrowseSettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BrowseSettingsPage();
    },
  );
}

/// generated route for
/// [DataSettingsPage]
class DataSettingsRoute extends PageRouteInfo<void> {
  const DataSettingsRoute({List<PageRouteInfo>? children})
      : super(
          DataSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DataSettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DataSettingsPage();
    },
  );
}

/// generated route for
/// [DownloadsPage]
class DownloadsRoute extends PageRouteInfo<void> {
  const DownloadsRoute({List<PageRouteInfo>? children})
      : super(
          DownloadsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DownloadsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DownloadsPage();
    },
  );
}

/// generated route for
/// [ExtensionBrowsePage]
class ExtensionBrowseRoute extends PageRouteInfo<void> {
  const ExtensionBrowseRoute({List<PageRouteInfo>? children})
      : super(
          ExtensionBrowseRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExtensionBrowseRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ExtensionBrowsePage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    required void Function() onLogin,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            onLogin: onLogin,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>();
      return LoginPage(
        key: args.key,
        onLogin: args.onLogin,
      );
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    required this.onLogin,
  });

  final Key? key;

  final void Function() onLogin;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLogin: $onLogin}';
  }
}

/// generated route for
/// [MangaPage]
class MangaRoute extends PageRouteInfo<MangaRouteArgs> {
  MangaRoute({
    Key? key,
    required int mangaId,
    List<PageRouteInfo>? children,
  }) : super(
          MangaRoute.name,
          args: MangaRouteArgs(
            key: key,
            mangaId: mangaId,
          ),
          initialChildren: children,
        );

  static const String name = 'MangaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MangaRouteArgs>();
      return MangaPage(
        key: args.key,
        mangaId: args.mangaId,
      );
    },
  );
}

class MangaRouteArgs {
  const MangaRouteArgs({
    this.key,
    required this.mangaId,
  });

  final Key? key;

  final int mangaId;

  @override
  String toString() {
    return 'MangaRouteArgs{key: $key, mangaId: $mangaId}';
  }
}

/// generated route for
/// [MigrationBrowsePage]
class MigrationBrowseRoute extends PageRouteInfo<void> {
  const MigrationBrowseRoute({List<PageRouteInfo>? children})
      : super(
          MigrationBrowseRoute.name,
          initialChildren: children,
        );

  static const String name = 'MigrationBrowseRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MigrationBrowsePage();
    },
  );
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsPage();
    },
  );
}

/// generated route for
/// [SourceBrowsePage]
class SourceBrowseRoute extends PageRouteInfo<void> {
  const SourceBrowseRoute({List<PageRouteInfo>? children})
      : super(
          SourceBrowseRoute.name,
          initialChildren: children,
        );

  static const String name = 'SourceBrowseRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SourceBrowsePage();
    },
  );
}

/// generated route for
/// [SourcePage]
class SourceRoute extends PageRouteInfo<SourceRouteArgs> {
  SourceRoute({
    Key? key,
    required String sourceId,
    List<PageRouteInfo>? children,
  }) : super(
          SourceRoute.name,
          args: SourceRouteArgs(
            key: key,
            sourceId: sourceId,
          ),
          initialChildren: children,
        );

  static const String name = 'SourceRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SourceRouteArgs>();
      return SourcePage(
        key: args.key,
        sourceId: args.sourceId,
      );
    },
  );
}

class SourceRouteArgs {
  const SourceRouteArgs({
    this.key,
    required this.sourceId,
  });

  final Key? key;

  final String sourceId;

  @override
  String toString() {
    return 'SourceRouteArgs{key: $key, sourceId: $sourceId}';
  }
}

/// generated route for
/// [UpdatesPage]
class UpdatesRoute extends PageRouteInfo<void> {
  const UpdatesRoute({List<PageRouteInfo>? children})
      : super(
          UpdatesRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdatesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UpdatesPage();
    },
  );
}
