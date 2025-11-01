import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:solitude/src/core/services/theme_service.dart';

import 'core/config/config.dart';
import 'core/localization/app_localizations.dart';
import 'features/library/presentation/bloc/library_bloc.dart';
import 'features/reader/presentation/bloc/reader_bloc.dart';
import 'features/settings/presentation/bloc/settings_bloc.dart';
import 'router/app_router.dart';

Future<void> entryPoint() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await configureDependencies();

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

    final themeService = sl<ThemeService>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<LibraryBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<ReaderBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<SettingsBloc>(),
        ),
      ],
      child: DismissKeyboard(
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: themeService.getLightThemeData(),
              darkTheme: themeService.getDarkThemeData(),
              themeMode: state.settings.themeMode,
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
