

import 'package:flutterTemplate/domain/entities/entities.dart';

abstract class LocalStorageDataSource {

  Future<User> loadUser();

  Future<User> addOrUpdateUserCountry(String country);
}