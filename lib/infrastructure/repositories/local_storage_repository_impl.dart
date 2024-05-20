import 'package:fluttertemplate/domain/datasources/local_storage_datasource.dart';
import 'package:fluttertemplate/domain/entities/entities.dart';
import 'package:fluttertemplate/domain/repositories/local_storage_repository.dart';

class LocalStorageRepositoryImpl extends LocalStorageRepository {

  final LocalStorageDataSource datasource;

  LocalStorageRepositoryImpl(this.datasource);
  @override
  Future<User> addOrUpdateUserCountry(String country) {
    return datasource.addOrUpdateUserCountry(country);
  }
  
  @override
  Future<User> loadUser() {
    return datasource.loadUser();
  }

}