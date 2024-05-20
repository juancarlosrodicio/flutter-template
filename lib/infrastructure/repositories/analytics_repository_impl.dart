

import 'package:flutterTemplate/domain/datasources/analytics_datasource.dart';
import 'package:flutterTemplate/domain/repositories/analytics_repository.dart';

class AnalyticsRepositoryImpl extends AnalyticsRepository {

  final AnalyticsDatasource analyticsDatasource;

  AnalyticsRepositoryImpl(this.analyticsDatasource);
  
  @override
  void startSession() {
    analyticsDatasource.startSession();
  }
  


}