import 'package:fluttertemplate/config/constants/countries.dart';
import 'package:fluttertemplate/config/constants/environment.dart';
import 'package:fluttertemplate/domain/datasources/local_storage_datasource.dart';
import 'package:fluttertemplate/domain/entities/entities.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarDatasource extends LocalStorageDataSource {

  late Future<Isar> db;

  IsarDatasource() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationCacheDirectory();

    if(Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [UserSchema],
        inspector: true,
        directory: dir.path
      );
    }

    return Future.value(Isar.getInstance());
  }

  
  @override
  Future<User> addOrUpdateUserCountry(String country) async {
    final isar = await db;

    final User? user = await isar.users.where().findFirst();

    if(user != null && Countries.locale[country] == user.locale) return user;

    final String locale = Countries.locale[country] ?? 'es-ES';

    if(user == null) {
      //insertamos
      final User firstUser = User(
        id: 1,
        locale: locale
      );
      isar.writeTxnSync(() => isar.users.putSync(firstUser));
      Environment.buildLocale(locale.split('-')[0], locale.split('-')[1]);

      return firstUser;
    } else {
      //actualizamos
      final User updateUser = User(
        id: 1,
        locale: Countries.locale[country] ?? 'es-ES'
      );
      isar.writeTxnSync(() => isar.users.putSync(updateUser));
      Environment.buildLocale(locale.split('-')[0], locale.split('-')[1]);

      return updateUser;
    }
  }
  
  @override
  Future<User> loadUser() async {
    final isar = await db;

    User? user = await isar.users.where().findFirst();

    if(user != null) {
      Environment.buildLocale(user.locale.split('-')[0], user.locale.split('-')[1]);
    }
    
    return user ?? User(id: 0, locale: 'es-ES');
  }

}