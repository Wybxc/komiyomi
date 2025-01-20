import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage()
class MigrationBrowsePage extends StatelessWidget {
  const MigrationBrowsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('迁移内容'));
  }
}
