import 'package:fluttertemplate/infrastructure/datasources/firebase_analytics_datasource.dart';
import 'package:fluttertemplate/infrastructure/repositories/analytics_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'analytics_repository_provider.g.dart';

@Riverpod(keepAlive: true)
AnalyticsRepositoryImpl analyticsRepository(AnalyticsRepositoryRef ref) {
  return AnalyticsRepositoryImpl(FirebaseAnalyticsDatasource());
}