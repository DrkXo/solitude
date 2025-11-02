import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/app_localizations.dart';
import '../../../../router/app_router.dart';
import '../../../settings/data/models/portable_settings.dart';
import '../../../settings/data/models/settings_constants.dart';
import '../../../settings/presentation/bloc/settings_bloc.dart';
import '../../data/models/ebook_entry.dart';
import '../bloc/library_bloc.dart';
import '../widgets/e_book_adding_card.dart';
import '../widgets/e_book_card.dart';
import '../widgets/e_book_tile.dart';
import '../widgets/ebook_library_empty_widget.dart';
import '../widgets/ebook_library_unkown_widget.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({
    super.key,
  });

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  void initState() {
    super.initState();
    context.read<LibraryBloc>().add(const LibraryEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.appTitle,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {
              context.pushNamed(AppRoutes.settings.name);
            },
          ),
        ],
      ),
      body: BlocConsumer<LibraryBloc, LibraryState>(
        listener: (context, state) {
          state.whenOrNull(
            error: (message, ebooks) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
          );
        },
        builder: (context, state) {
          return BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, settingsState) {
              return state.maybeWhen(
                loaded: (ebooks, isAdding) => _buildLoaded(
                  context,
                  ebooks,
                  isAdding,
                  settingsState.appSettings.library,
                ),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (message, ebooks) => _buildLoaded(
                  context,
                  ebooks,
                  false,
                  settingsState.appSettings.library,
                ),
                orElse: () => EbookLibraryUnkownWidget(),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            context.read<LibraryBloc>().add(const LibraryEvent.pickEbook()),
        icon: const Icon(Icons.add),
        label: const Text('Add Book'),
      ),
    );
  }

  Widget _buildLoaded(
    BuildContext context,
    List<EbookEntry> ebooks,
    bool isAdding,
    LibrarySettings librarySettings,
  ) {
    if (ebooks.isEmpty) {
      return EbookLibraryEmptyWidget();
    }

    // Sort ebooks based on settings
    final sortedEbooks = List<EbookEntry>.from(ebooks);
    sortedEbooks.sort((a, b) {
      switch (librarySettings.sortBy) {
        case SortBy.title:
          return a.ebook.metadata.title.compareTo(b.ebook.metadata.title);
        case SortBy.author:
          return a.ebook.metadata.author.compareTo(b.ebook.metadata.author);
        case SortBy.date:
          return b.addedAt.compareTo(a.addedAt); // Newest first
        case SortBy.size:
          // Assuming size is available, but for now default to title
          return a.ebook.metadata.title.compareTo(b.ebook.metadata.title);
        }
    });

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Text(
                '${sortedEbooks.length} ${sortedEbooks.length == 1 ? 'Book' : 'Books'}',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface.withValues(alpha: 0.6),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: librarySettings.viewStyle == ViewStyle.list
              ? ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: sortedEbooks.length + (isAdding ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index < sortedEbooks.length) {
                      final entry = sortedEbooks[index];
                      return EBookTile(
                        entry: entry,
                        showCover: librarySettings.showCovers,
                      );
                    } else {
                      return const SizedBox.shrink(); // No adding card for list view
                    }
                  },
                )
              : LayoutBuilder(
                  builder: (context, constraints) {
                    int crossAxisCount;
                    double childAspectRatio;
                    if (constraints.maxWidth > 1200) {
                      crossAxisCount = 6;
                      childAspectRatio = 0.65;
                    } else if (constraints.maxWidth > 900) {
                      crossAxisCount = 5;
                      childAspectRatio = 0.65;
                    } else if (constraints.maxWidth > 600) {
                      crossAxisCount = 4;
                      childAspectRatio = 0.65;
                    } else if (constraints.maxWidth > 400) {
                      crossAxisCount = 3;
                      childAspectRatio = 0.65;
                    } else {
                      crossAxisCount = 2;
                      childAspectRatio = 0.65;
                    }
                    return GridView.builder(
                      padding: const EdgeInsets.all(16),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        childAspectRatio: childAspectRatio,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      itemCount: sortedEbooks.length + (isAdding ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index < sortedEbooks.length) {
                          final entry = sortedEbooks[index];
                          return EBookCard(
                            entry: entry,
                            showCover: librarySettings.showCovers,
                          );
                        } else {
                          return EBookAddingCard();
                        }
                      },
                    );
                  },
                ),
        ),
      ],
    );
  }
}
