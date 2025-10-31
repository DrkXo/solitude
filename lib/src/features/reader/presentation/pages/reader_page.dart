import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../../core/localization/app_localizations.dart';
import '../bloc/reader_bloc.dart';

class ReaderPage extends StatelessWidget {
  const ReaderPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReaderBloc, ReaderState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (controller, currentChapterIndex, currentPageIndex) => Scaffold(
            appBar: AppBar(
              title: Text(controller.currentChapter.title),
              actions: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    // TODO: Open reading settings
                  },
                ),
              ],
            ),
            body: Column(
              children: [
                // Reading progress indicator
                LinearProgressIndicator(
                  value: (currentChapterIndex + 1) / controller.totalChapters,
                  backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
                ),
                // Content area
                Expanded(
                  child: Container(
                    color: Theme.of(context).colorScheme.surface,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Html(
                        data: controller.getCurrentPageContent(),
                        style: {
                          "body": Style(
                            fontSize: FontSize(16.0),
                            lineHeight: LineHeight(1.6),
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                          "p": Style(
                            margin: Margins.only(bottom: 12.0),
                          ),
                          "h1": Style(
                            fontSize: FontSize(24.0),
                            fontWeight: FontWeight.bold,
                            margin: Margins.only(bottom: 16.0, top: 24.0),
                          ),
                          "h2": Style(
                            fontSize: FontSize(20.0),
                            fontWeight: FontWeight.bold,
                            margin: Margins.only(bottom: 12.0, top: 20.0),
                          ),
                          "h3": Style(
                            fontSize: FontSize(18.0),
                            fontWeight: FontWeight.bold,
                            margin: Margins.only(bottom: 10.0, top: 18.0),
                          ),
                        },
                      ),
                    ),
                  ),
                ),
                // Navigation controls
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    border: Border(
                      top: BorderSide(
                        color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: currentChapterIndex > 0
                            ? () {
                                context.read<ReaderBloc>().add(
                                  const ReaderEvent.previousChapter(),
                                );
                              }
                            : null,
                        icon: const Icon(Icons.chevron_left),
                         tooltip: 'Previous Page',
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                             Text(
                               'Page ${currentPageIndex + 1}',
                               style: Theme.of(context).textTheme.bodySmall,
                               textAlign: TextAlign.center,
                             ),
                             Text(
                               AppLocalizations.of(context)!.chapterIndicator(
                                 currentChapterIndex + 1,
                                 controller.totalChapters,
                               ),
                               style: Theme.of(context).textTheme.bodySmall,
                               textAlign: TextAlign.center,
                             ),
                            Text(
                              controller.currentChapter.title,
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: currentChapterIndex < controller.totalChapters - 1
                            ? () {
                                context.read<ReaderBloc>().add(
                                  const ReaderEvent.nextChapter(),
                                );
                              }
                            : null,
                        icon: const Icon(Icons.chevron_right),
                         tooltip: 'Next Page',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
           error: (message) => Scaffold(
             appBar: AppBar(title: Text(AppLocalizations.of(context)!.errorTitle)),
             body: Center(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Icon(Icons.error_outline, size: 64),
                   const SizedBox(height: 16),
                   Text(message, textAlign: TextAlign.center),
                   const SizedBox(height: 16),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       ElevatedButton(
                         onPressed: () {
                           // Retry loading
                           context.read<ReaderBloc>().add(const ReaderEvent.started());
                         },
                         child: const Text('Retry'),
                       ),
                       const SizedBox(width: 16),
                       ElevatedButton(
                         onPressed: () => Navigator.of(context).pop(),
                         child: const Text('Go Back'),
                       ),
                     ],
                   ),
                 ],
               ),
             ),
           ),
          orElse: () => const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }
}
