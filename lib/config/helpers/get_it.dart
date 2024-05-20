import 'package:flutterTemplate/infrastructure/datasources/isar_datasource.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton(() => IsarDatasource());
}