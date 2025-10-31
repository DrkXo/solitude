
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class ReaderRepositoryImp implements ReaderRepository{

        final ReaderRemoteDataSource remoteDataSource;
        ReaderRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    