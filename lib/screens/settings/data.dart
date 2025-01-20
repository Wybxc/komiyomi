import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:komiyomi/graphql/generated/clear_server_cache.graphql.dart';
import 'package:komiyomi/localizations.dart';
import 'package:komiyomi/providers/cache.dart';
import 'package:komiyomi/providers/graphql.dart';

@RoutePage()
class DataSettingsPage extends StatelessWidget {
  const DataSettingsPage({super.key});

  Future<void> _showConfirmDialog({
    required BuildContext context,
    required String title,
    required String content,
    required Future<void> Function() onConfirm,
  }) async {
    final l10n = AppLocalizations.of(context)!;

    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () async {
              await onConfirm();
              if (context.mounted) {
                Navigator.of(context).pop();
              }
            },
            child: Text(l10n.confirm),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('数据'),
        scrolledUnderElevation: 0,
      ),
      body: ListView(
        children: [
          Card(
            margin: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Consumer(
                  builder: (context, ref, _) => ListTile(
                    title: const Text('清除缓存'),
                    onTap: () => _showConfirmDialog(
                      context: context,
                      title: '清除缓存',
                      content: '确定要清除缓存吗？（重启应用后生效）',
                      onConfirm: () =>
                          ref.read(imageCacheManagerProvider).emptyCache(),
                    ),
                  ),
                ),
                Consumer(
                  builder: (context, ref, _) => ListTile(
                    title: const Text('清除服务器图片缓存'),
                    onTap: () => _showConfirmDialog(
                      context: context,
                      title: '清除服务器图片缓存',
                      content: '确定要清除服务器图片缓存吗？（重启应用后生效）',
                      onConfirm: () async {
                        final client = ref.read(graphQLProvider)?.client;
                        await client?.mutate$ClearServerCache();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
