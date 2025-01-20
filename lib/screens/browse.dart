import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:komiyomi/localizations.dart';
import 'package:komiyomi/route.dart';

@RoutePage()
class BrowsePage extends StatelessWidget {
  const BrowsePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.browse),
      ),
      body: AutoTabsRouter.tabBar(
        routes: const [
          SourceBrowseRoute(),
          ExtensionBrowseRoute(),
          MigrationBrowseRoute(),
        ],
        builder: (context, child, controller) {
          return Column(
            children: [
              TabBar(
                controller: controller,
                tabs: const [
                  Tab(text: '图源'),
                  Tab(text: '扩展'),
                  Tab(text: '迁移'),
                ],
              ),
              Expanded(child: child),
            ],
          );
        },
      ),
    );
  }
}
