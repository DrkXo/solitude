import 'package:ebook_x/ebook_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class ChapterPage extends StatelessWidget {
  final Chapter chapter;

  const ChapterPage({
    super.key,
    required this.chapter,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chapter.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: chapter.content.isNotEmpty
            ? chapter.content[0].when(
                text: (value) => Text(value),
                html: (value) => Html(data: value),
                image: (src, alt, title) =>
                    Html(data: '<img src="$src" alt="$alt">'),
              )
            : const Text('No content'),
      ),
    );
  }
}
