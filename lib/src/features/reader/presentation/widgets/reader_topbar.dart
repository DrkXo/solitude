import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../router/app_router.dart';

class ReaderTopBar extends StatelessWidget {
  final bool showBars;

  const ReaderTopBar({
    super.key,
    required this.showBars,
  });

  @override
  Widget build(BuildContext context) {
    if (!showBars) return const SizedBox.shrink();

    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Material(
        elevation: 0.0,
        child: Container(
          height: kToolbarHeight,
          color:
              Theme.of(context).appBarTheme.backgroundColor ??
              Theme.of(context).primaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(LucideIcons.settings),
                onPressed: () {
                  context.pushNamed(AppRoutes.settings.name);
                },
              ),
              IconButton(
                icon: const Icon(LucideIcons.x),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
