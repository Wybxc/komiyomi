import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage()
class ExtensionBrowsePage extends StatelessWidget {
  const ExtensionBrowsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('扩展内容'));
  }
}
