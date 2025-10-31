import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'core/config/config.dart';
import 'core/localization/app_localizations.dart';
import 'core/theme/theme.dart';
import 'features/library/presentation/bloc/library_bloc.dart';
import 'features/reader/presentation/bloc/reader_bloc.dart';
import 'router/app_router.dart';

Future<void> entryPoint() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await configureDependencies();

  ErrorWidget.builder = (FlutterErrorDetails details) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              const Text('Something went wrong!'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Restart the app or go back
                },
                child: const Text('Restart'),
              ),
            ],
          ),
        ),
      ),
    );
  };

  runApp(const Solitude());

  WidgetsBinding.instance.addPostFrameCallback((_) {
    FlutterNativeSplash.remove();
  });
}

class Solitude extends StatelessWidget {
  const Solitude({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appRouter = sl<AppRouter>().router;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<LibraryBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<ReaderBloc>(),
        ),
      ],
      child: DismissKeyboard(
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.darkTheme,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English
          ],
          routerDelegate: appRouter.routerDelegate,
          routeInformationParser: appRouter.routeInformationParser,
          routeInformationProvider: appRouter.routeInformationProvider,
        ),
      ),
    );
  }
}
