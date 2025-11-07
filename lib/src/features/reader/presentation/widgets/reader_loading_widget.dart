import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:solitude/src/core/widgets/widgets.dart';

class ReaderLoadingWidget extends StatelessWidget {
  const ReaderLoadingWidget({
    super.key,
    this.coverImagePath,
  });

  final String? coverImagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                color: Theme.of(
                  context,
                ).colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: coverImagePath != null
                    ? CoverImage(
                        imagePath: coverImagePath,
                        fit: BoxFit.cover,
                      )
                    : Center(
                        child: Icon(
                          LucideIcons.bookOpen,
                          size: 64,
                          color: Theme.of(
                            context,
                          ).colorScheme.primary,
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 24),
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(
              'Loading book...',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
