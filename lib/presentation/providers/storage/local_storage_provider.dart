
import 'package:fluttertemplate/config/helpers/get_it.dart';
import 'package:fluttertemplate/infrastructure/datasources/isar_datasource.dart';
import 'package:fluttertemplate/infrastructure/repositories/local_storage_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localStorageRepositoryProvider = Provider((ref) {
  return LocalStorageRepositoryImpl(getIt<IsarDatasource>());
});