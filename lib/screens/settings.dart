import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:komiyomi/localizations.dart';
import 'package:komiyomi/providers/graphql.dart';
import 'package:komiyomi/route.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settings),
        actions: const [LogoutButton()],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(l10n.appearance),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              context.router.push(const AppearanceSettingsRoute());
            },
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: Text(l10n.browse),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              context.router.push(const BrowseSettingsRoute());
            },
          ),
          ListTile(
            leading: const Icon(Icons.data_usage),
            title: const Text('数据'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              context.router.push(const DataSettingsRoute());
            },
          ),
        ],
      ),
    );
  }
}

class LogoutButton extends ConsumerWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;

    return IconButton(
      icon: const Icon(Icons.logout),
      tooltip: l10n.logoutTitle,
      onPressed: () {
        final loginStateNotifier = ref.read(graphQLProvider.notifier);
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(l10n.logoutTitle),
            content: Text(l10n.logoutMessage),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(l10n.cancel),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  loginStateNotifier.disconnect();
                },
                child: Text(l10n.confirm),
              ),
            ],
          ),
        );
      },
    );
  }
}
