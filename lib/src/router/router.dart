part of 'app_router.dart';

@Singleton(order: 0)
class AppRouter {
  late final GoRouter router;

  // ignore: unused_field
  final EbookLibraryService _ebookLibraryService;
  // ignore: unused_field
  final AppSettingsService _appSettingsService;

  AppRouter(this._ebookLibraryService, this._appSettingsService) {
    router = GoRouter(
      initialLocation: AppRoutes.library.path,
      debugLogDiagnostics: true,

      routes: [
        GoRoute(
          path: AppRoutes.library.path,
          name: AppRoutes.library.name,
          builder: (context, state) => const LibraryPage(),
          routes: [
            GoRoute(
              path: AppRoutes.reader.path,
              name: AppRoutes.reader.name,
              pageBuilder: (context, state) {
                final ebookId = state.pathParameters['ebookId']!;
                final coverImage = state.extra as String?;

                  return NoTransitionPage(
                    child: BlocProvider<ReaderBloc>(
                      create: (context) => GetIt.I<ReaderBloc>(),
                      child: ReaderPage(
                        ebookId: ebookId,
                        coverImage: coverImage,
                      ),
                    ),
                  );
              },
            ),
          ],
        ),
        GoRoute(
          path: AppRoutes.settings.path,
          name: AppRoutes.settings.name,
          pageBuilder: (context, state) => ModalPage(
            builder: (context) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: const SettingsPage(),
            ),
            isScrollControlled: true,
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.8,
            ),
          ),
        ),
      ],
    );
  }
}
