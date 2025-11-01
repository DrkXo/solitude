import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/localization/app_localizations.dart';
import '../../../../router/app_router.dart';
import '../../data/models/ebook_entry.dart';
import '../bloc/library_bloc.dart';

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
    return const _LibraryPageView();
  }
}

class _LibraryPageView extends StatelessWidget {
  const _LibraryPageView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
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
                SnackBar(content: Text(message)),
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (ebooks, isAdding) =>
                _buildLoaded(context, ebooks, isAdding),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message, ebooks) => _buildLoaded(context, ebooks, false),
            orElse: () => Center(
              child: Text(AppLocalizations.of(context)!.welcomeMessage),
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            context.read<LibraryBloc>().add(const LibraryEvent.pickEbook()),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildLoaded(
    BuildContext context,
    List<EbookEntry> ebooks,
    bool isAdding,
  ) {
    if (ebooks.isEmpty) {
      return Center(
        child: Text(AppLocalizations.of(context)!.noEbooksMessage),
      );
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search ebooks...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onChanged: (query) {
              context.read<LibraryBloc>().add(LibraryEvent.searchEbooks(query));
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: ebooks.length + (isAdding ? 1 : 0),
            itemBuilder: (context, index) {
              if (index < ebooks.length) {
                final entry = ebooks[index];
                return Dismissible(
                  key: Key(entry.id),
                  onDismissed: (direction) {
                    context.read<LibraryBloc>().add(
                      LibraryEvent.removeEbook(entry.id),
                    );
                  },
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  child: ListTile(
                    leading: entry.coverImagePath != null
                        ? SizedBox(
                            width: 50,
                            height: 70,
                            child: Html(
                              data: entry.coverImagePath!,
                            ),
                          )
                        : const Icon(Icons.book),
                    title: Text(entry.ebook.metadata.title),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          AppLocalizations.of(
                            context,
                          )!.authorLabel(entry.ebook.metadata.author),
                        ),
                        Text(
                          AppLocalizations.of(
                            context,
                          )!.chaptersLabel(entry.ebook.chapters.length),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        context.goNamed(
                          AppRoutes.reader.name,
                          pathParameters: {
                            'ebookId': entry.id,
                          },
                        );
                      },
                      icon: const Icon(Icons.open_in_new),
                    ),
                  ),
                );
              } else {
                return ListTile(
                  title: Text(AppLocalizations.of(context)!.addingBookMessage),
                  leading: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
