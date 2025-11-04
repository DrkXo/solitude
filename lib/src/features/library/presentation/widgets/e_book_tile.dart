import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:solitude/src/features/library/data/models/ebook_entry.dart';
import 'package:solitude/src/features/library/presentation/bloc/library_bloc.dart';
import 'package:solitude/src/router/app_router.dart';

class EBookTile extends StatelessWidget {
  final EbookEntry entry;
  final bool showCover;

  const EBookTile({
    super.key,
    required this.entry,
    this.showCover = true,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(entry.id),
      direction: DismissDirection.up,
      onDismissed: (direction) {
        context.read<LibraryBloc>().add(
          LibraryEvent.removeEbook(entry.id),
        );
      },
      background: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(LucideIcons.trash2, color: Colors.white, size: 32),
            SizedBox(height: 4),
            Text(
              'Delete',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      child: ListTile(
        onTap: () {
          context.goNamed(
            AppRoutes.reader.name,
            pathParameters: {
              'ebookId': entry.id,
            },
          );
        },
        leading: showCover
            ? Container(
                width: 50,
                height: 70,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: entry.coverImagePath != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: HtmlWidget(
                          '<img src="${entry.coverImagePath!}"/>',
                          rebuildTriggers: [showCover],
                        ),
                      )
                    : Center(
                        child: Icon(
                          LucideIcons.bookOpen,
                          size: 24,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
              )
            : null,
        title: Text(
          entry.ebook.metadata.title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              entry.ebook.metadata.author,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(
                  context,
                ).colorScheme.onSurface.withValues(alpha: 0.6),
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                Icon(
                  LucideIcons.book,
                  size: 14,
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface.withValues(alpha: 0.5),
                ),
                const SizedBox(width: 4),
                Text(
                  '${entry.ebook.chapters.length} chapters',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.5),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
