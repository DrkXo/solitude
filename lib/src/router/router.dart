part of 'app_router.dart';

@Singleton(order: 0)
class AppRouter {
  late final GoRouter router;

  final EbookLibraryService _ebookLibraryService;
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
                    create: (context) {
                      final bloc = ReaderBloc(
                        readerService: GetIt.I<ReaderService>(),
                        libraryService: _ebookLibraryService,
                        appSettingsService: _appSettingsService,
                      );
                      bloc.add(
                        ReaderEvent.loadEbook(ebookId, coverImage: coverImage),
                      );
                      return bloc;
                    },
                    child: const ReaderPage(),
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
