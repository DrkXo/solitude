
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class LibraryRepositoryImp implements LibraryRepository{

        final LibraryRemoteDataSource remoteDataSource;
        LibraryRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    