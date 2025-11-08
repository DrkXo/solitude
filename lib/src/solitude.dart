import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'core/config/config.dart';
import 'core/localization/app_localizations.dart';
import 'core/theme/theme.dart';
import 'core/utils/utils.dart';
import 'features/library/presentation/bloc/library_bloc.dart';
import 'features/settings/presentation/bloc/settings_bloc.dart';
import 'router/app_router.dart';

Future<void> entryPoint() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await configureDependencies();

  // Set up global error handling
  FlutterError.onError = (FlutterErrorDetails details) {
    logger.error('Flutter error: ${details.exception}', details.stack);
  };
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'An unexpected error occurred. Please restart the app.\n${details.exception}',
              textAlign: TextAlign.center,
            ),
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
          create: (context) => sl<SettingsBloc>(),
        ),
      ],
      child: DismissKeyboard(
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            final pageTransitionsTheme = PageTransitionsTheme(
              builders: {
                TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
                TargetPlatform.iOS: PredictiveBackPageTransitionsBuilder(),
                TargetPlatform.linux: PredictiveBackPageTransitionsBuilder(),
                TargetPlatform.macOS: PredictiveBackPageTransitionsBuilder(),
                TargetPlatform.windows: PredictiveBackPageTransitionsBuilder(),
                TargetPlatform.fuchsia: PredictiveBackPageTransitionsBuilder(),
              },
            );
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: AppTheme.light.copyWith(
                pageTransitionsTheme: pageTransitionsTheme,
              ),
              darkTheme: AppTheme.dark.copyWith(
                pageTransitionsTheme: pageTransitionsTheme,
              ),
              themeMode: ThemeMode.values.firstWhere(
                (mode) => mode.name == state.appSettings.display.theme.value,
                orElse: () => ThemeMode.system,
              ),
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
            );
          },
        ),
      ),
    );
  }
}
