import 'package:flutter/material.dart';
import 'package:solitude/src/features/library/presentation/pages/library_page.dart';

import 'core/config/config.dart';

Future<void> entryPoint() async {
  await DependencyInjection.init();
  runApp(
    const Solitude(),
  );
}

class Solitude extends StatelessWidget {
  const Solitude({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DismissKeyboard(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LibraryPage(),
      ),
    );
  }
}
