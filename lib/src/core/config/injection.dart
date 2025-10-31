part of 'config.dart';

final sl = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();

  sl.init();
}
