import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:komiyomi/localizations.dart';

@RoutePage()
class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.updates),
      ),
      body: const Center(
        child: Text('更新页面'),
      ),
    );
  }
}
