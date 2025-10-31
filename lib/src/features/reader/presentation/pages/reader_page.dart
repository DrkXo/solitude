import 'package:ebook_x/ebook_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class ReaderPage extends StatefulWidget {
  final EbookXController controller;

  const ReaderPage({super.key, required this.controller});

  @override
  State<ReaderPage> createState() => _ReaderPageState();
}

class _ReaderPageState extends State<ReaderPage> {
  @override
  Widget build(BuildContext context) {
    final controller = widget.controller;
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.currentChapter.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Html(data: controller.getCurrentPageContent()),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    controller.previousPage();
                  });
                },
                child: const Text('Previous Chapter'),
              ),
              Text(
                'Chapter ${controller.currentChapterIndex + 1} of ${controller.totalChapters}',
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    controller.nextPage();
                  });
                },
                child: const Text('Next Chapter'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
