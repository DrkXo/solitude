// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:talker_flutter/talker_flutter.dart' as _i207;

import '../../features/library/presentation/bloc/library_bloc.dart' as _i395;
import '../../features/reader/presentation/bloc/reader_bloc.dart' as _i523;
import '../../router/app_router.dart' as _i630;
import '../services/db/local_db_service.dart' as _i1058;
import '../services/ebook_library_service.dart' as _i222;
import '../services/reader_service.dart' as _i534;
import '../utils/utils.dart' as _i1021;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final logger = _$Logger();
    gh.factory<_i1058.SolitudeDatabase>(() => _i1058.SolitudeDatabase());
    gh.factory<_i1058.LocalDbService>(() => _i1058.LocalDbService());
    gh.singleton<_i207.Talker>(() => logger.logger);
    await gh.factoryAsync<_i222.EbookLibraryService>(() {
      final i = _i222.EbookLibraryService(
        localDbService: gh<_i1058.LocalDbService>(),
      );
      return i.init().then((_) => i);
    }, preResolve: true);
    gh.factory<_i534.ReaderService>(
      () => _i534.ReaderService(
        ebookLibraryService: gh<_i222.EbookLibraryService>(),
      ),
    );
    gh.factory<_i523.ReaderBloc>(
      () => _i523.ReaderBloc(
        readerService: gh<_i534.ReaderService>(),
        libraryService: gh<_i222.EbookLibraryService>(),
      ),
    );
    gh.factory<_i395.LibraryBloc>(
      () => _i395.LibraryBloc(gh<_i222.EbookLibraryService>()),
    );
    gh.singleton<_i630.AppRouter>(
      () => _i630.AppRouter(gh<_i222.EbookLibraryService>()),
    );
    return this;
  }
}

class _$Logger extends _i1021.Logger {}
