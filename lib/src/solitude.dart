import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solitude/src/features/library/presentation/pages/library_page.dart';

import 'core/config/config.dart';
import 'features/library/presentation/bloc/library_bloc.dart';

Future<void> entryPoint() async {
  configureDependencies();
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<LibraryBloc>(),
        ),
      ],
      child: const DismissKeyboard(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LibraryPage(),
        ),
      ),
    );
  }
}
