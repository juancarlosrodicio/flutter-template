import 'package:fluttertemplate/domain/entities/entities.dart';

abstract class LocalStorageRepository {

  Future<User> loadUser();

  Future<User> addOrUpdateUserCountry(String country);
}