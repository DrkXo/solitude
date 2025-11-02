import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:solitude/src/core/localization/app_localizations.dart';

class EbookLibraryEmptyWidget extends StatelessWidget {
  const EbookLibraryEmptyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Icon(
             LucideIcons.library,
             size: 80,
             color: Theme.of(
               context,
             ).colorScheme.primary.withValues(alpha: 0.3),
           ),
          const SizedBox(height: 16),
          Text(
            AppLocalizations.of(context)!.noEbooksMessage,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(
                context,
              ).colorScheme.onSurface.withValues(alpha: 0.6),
            ),
          ),
        ],
      ),
    );
  }
}
