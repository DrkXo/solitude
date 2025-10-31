part of 'app_router.dart';

@Singleton(order: 0)
class AppRouter {
  late final GoRouter router;

  AppRouter() {
    router = GoRouter(
      initialLocation: AppRoutes.library.path,
      debugLogDiagnostics: true,

      routes: [
        GoRoute(
          path: AppRoutes.library.path,
          name: AppRoutes.library.name,
          builder: (context, state) => const LibraryPage(),
        ),
        GoRoute(
          path: AppRoutes.reader.path,
          name: AppRoutes.reader.name,
          builder: (context, state) => BlocProvider(
            create: (context) => sl<ReaderBloc>(),
            child: const ReaderPage(),
          ),
        ),
      ],
    );
  }
}
