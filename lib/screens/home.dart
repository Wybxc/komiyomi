import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sidebarx/sidebarx.dart';

import 'package:komiyomi/constants/layout.dart';
import 'package:komiyomi/localizations.dart';
import 'package:komiyomi/route.dart';

class PageConfig {
  final IconData icon;
  final String label;

  const PageConfig({
    required this.icon,
    required this.label,
  });
}

List<PageConfig> _getPageConfigs(BuildContext context) {
  final l10n = AppLocalizations.of(context)!;
  return [
    PageConfig(
      icon: Icons.book,
      label: l10n.bookshelf,
    ),
    PageConfig(
      icon: Icons.update,
      label: l10n.updates,
    ),
    PageConfig(
      icon: Icons.explore,
      label: l10n.browse,
    ),
    PageConfig(
      icon: Icons.download,
      label: l10n.downloads,
    ),
    PageConfig(
      icon: Icons.settings,
      label: l10n.settings,
    ),
  ];
}

class NavigationItems extends StatelessWidget {
  final List<PageConfig> configs;
  final TabsRouter tabsRouter;

  const NavigationItems({
    super.key,
    required this.configs,
    required this.tabsRouter,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: tabsRouter.activeIndex,
      onTap: tabsRouter.setActiveIndex,
      type: BottomNavigationBarType.fixed,
      items: configs
          .map((config) => BottomNavigationBarItem(
                icon: Icon(config.icon),
                label: config.label,
              ))
          .toList(),
    );
  }
}

class CustomSidebar extends StatelessWidget {
  final List<PageConfig> configs;
  final TabsRouter tabsRouter;
  final SidebarXController controller;

  const CustomSidebar({
    super.key,
    required this.configs,
    required this.tabsRouter,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: controller,
      theme: SidebarXTheme(
        width: kSideBarWidth,
        margin: const EdgeInsets.all(kStandardPadding),
        hoverColor:
            Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.08),
        itemDecoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
      ),
      extendedTheme: SidebarXTheme(
        width: kExpandedSideBarWidth,
        margin: const EdgeInsets.all(kStandardPadding),
      ),
      collapseIcon: Icons.chevron_left,
      extendIcon: Icons.chevron_right,
      items: configs
          .map((config) => SidebarXItem(
                icon: config.icon,
                label: config.label,
                onTap: () => tabsRouter.setActiveIndex(configs.indexOf(config)),
              ))
          .toList(),
    );
  }
}

@RoutePage()
class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =
        useMemoized(() => SidebarXController(selectedIndex: 0), []);

    return AutoTabsRouter(
      routes: const [
        BookshelfRoute(),
        UpdatesRoute(),
        BrowseRoute(),
        DownloadsRoute(),
        SettingsRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        controller.selectIndex(tabsRouter.activeIndex);

        final isWide = checkLayout(
          MediaQuery.of(context).size.width,
          LayoutType.desktop,
          check: CheckLayoutType.atLeast,
        );
        final pageConfigs = _getPageConfigs(context);

        if (!isWide) {
          return Scaffold(
            body: child,
            bottomNavigationBar: NavigationItems(
              configs: pageConfigs,
              tabsRouter: tabsRouter,
            ),
          );
        }

        return Scaffold(
          body: Row(
            children: [
              CustomSidebar(
                configs: pageConfigs,
                tabsRouter: tabsRouter,
                controller: controller,
              ),
              const VerticalDivider(thickness: 1, width: 1),
              Expanded(
                child: ClipRect(
                  child: child,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
