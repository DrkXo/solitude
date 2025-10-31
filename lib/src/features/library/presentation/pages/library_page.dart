import 'package:ebook_x/ebook_x.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../../reader/presentation/pages/chapter_page.dart';
import '../../../reader/presentation/pages/reader_page.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  final EbookX reader = EbookX();
  Ebook? ebook;
  EbookXController? controller;

  Future<void> pickAndReadEpub() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['epub', 'pdf', 'mobi'],
    );

    if (result != null) {
      final file = result.files.first;
      if (file.path != null) {
        try {
          final loadedEbook = await reader.read(file.path!);
          setState(() {
            ebook = loadedEbook;
            controller = EbookXController(
              loadedEbook,
              charactersPerPage: 1000000,
            ); // Large to show full chapters
          });
        } catch (e) {
          if (mounted) {
            String message = 'Error reading ebook: $e';
            if (e.toString().contains('MOBI parsing not yet implemented')) {
              message =
                  'MOBI format detected. Full parsing support coming soon!';
            }
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EbookX Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: pickAndReadEpub,
              child: const Text('Pick and Read Ebook (EPUB/PDF/MOBI)'),
            ),
            if (ebook != null) ...[
              const SizedBox(height: 20),
              Text('Title: ${ebook!.metadata.title}'),
              Text('Author: ${ebook!.metadata.author}'),
              Text('Chapters: ${ebook!.chapters.length}'),
              Expanded(
                child: ListView.builder(
                  itemCount: ebook!.chapters.length,
                  itemBuilder: (context, index) {
                    final chapter = ebook!.chapters[index];
                    final preview = chapter.content
                        .map(
                          (c) => c.when(
                            text: (v) => v,
                            html: (v) => 'HTML content',
                            image: (src, alt, title) => '[IMAGE]',
                          ),
                        )
                        .join(' ');
                    return ListTile(
                      title: Text(chapter.title),
                      subtitle: Text(
                        '${preview.substring(0, preview.length > 100 ? 100 : preview.length)}...',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChapterPage(chapter: chapter),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              if (controller != null) ...[
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReaderPage(controller: controller!),
                    ),
                  ),
                  child: const Text('Start Reading'),
                ),
              ],
            ],
          ],
        ),
      ),
    );
  }
}
