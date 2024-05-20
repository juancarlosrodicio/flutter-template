import 'package:fluttertemplate/domain/datasources/analytics_datasource.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class FirebaseAnalyticsDatasource extends AnalyticsDatasource {

  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  
  @override
  void startSession() {
    analytics.logEvent(name: "start_session");
  }

}