import 'package:flutter/material.dart';
import 'package:solitude/src/core/localization/app_localizations.dart';

class EbookLibraryUnkownWidget extends StatelessWidget {
  const EbookLibraryUnkownWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.auto_stories_outlined,
            size: 80,
            color: Theme.of(
              context,
            ).colorScheme.primary.withValues(alpha: .5),
          ),
          const SizedBox(height: 16),
          Text(
            AppLocalizations.of(context)!.welcomeMessage,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
