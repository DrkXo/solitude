part of 'app_router.dart';

@Singleton(order: 0)
class AppRouter {
  late final GoRouter router;

  final EbookLibraryService _ebookLibraryService;

  AppRouter(this._ebookLibraryService) {
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
              builder: (context, state) {
                final ebookId = state.pathParameters['ebookId']!;
                return BlocProvider<ReaderBloc>(
                  create: (context) {
                    final bloc = ReaderBloc(
                      readerService: GetIt.I<ReaderService>(),
                      libraryService: _ebookLibraryService,
                    );
                    bloc.add(ReaderEvent.loadEbook(ebookId));
                    return bloc;
                  },
                  child: const ReaderPage(),
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: AppRoutes.settings.path,
          name: AppRoutes.settings.name,
          builder: (context, state) => BlocProvider<SettingsBloc>(
            create: (context) => SettingsBloc(
              GetIt.I<ReaderSettingsService>(),
            ),
            child: const SettingsPage(),
          ),
        ),
      ],
    );
  }
}
