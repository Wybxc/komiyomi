import 'package:flutter/material.dart';

import 'package:komiyomi/localizations.dart';

class ErrorMessage extends StatelessWidget {
  final Exception error;
  final VoidCallback? onRetry;

  const ErrorMessage({
    super.key,
    required this.error,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final errorColor = theme.colorScheme.error;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline, color: errorColor, size: 48),
            const SizedBox(height: 16),
            SelectableText(
              error.toString(),
              style: TextStyle(color: errorColor),
              textAlign: TextAlign.center,
            ),
            if (onRetry != null) ...[
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh),
                label: Text(AppLocalizations.of(context)!.retry),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
