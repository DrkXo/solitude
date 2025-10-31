import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'core/config/config.dart';
import 'features/library/presentation/bloc/library_bloc.dart';
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

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<LibraryBloc>(),
        ),
      ],
      child: DismissKeyboard(
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerDelegate: appRouter.routerDelegate,
          routeInformationParser: appRouter.routeInformationParser,
          routeInformationProvider: appRouter.routeInformationProvider,
        ),
      ),
    );
  }
}
