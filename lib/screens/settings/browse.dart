import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:komiyomi/localizations.dart';
import 'package:komiyomi/providers/preferences.dart';

@RoutePage()
class BrowseSettingsPage extends StatelessWidget {
  const BrowseSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.browse),
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
                    return ListTile(
                      title: Text(l10n.showNsfwContent),
                      trailing: Switch(
                        value: ref.watch(showNsfwProvider),
                        onChanged: (value) =>
                            ref.read(showNsfwProvider.notifier).toggle(),
                      ),
                      onTap: () => ref.read(showNsfwProvider.notifier).toggle(),
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
