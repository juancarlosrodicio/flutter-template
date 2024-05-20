import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String theMovieDbApiKey = dotenv.env['THE_MOVIEDB_KEY'] ?? 'No Hay API KEY';
  static String titleApp = 'flutterTemplate';
  static String appleId = '{your_apple_id}';
  static String androidId = '{your_androir_id}';

  //TODO: This is a test id for admob. Change for yours
  static String admobIosProd = 'ca-app-pub-3940256099942544/2934735716';
  static String admobAndroidProd = 'ca-app-pub-3940256099942544/6300978111';

  static String admobIosDev = 'ca-app-pub-3940256099942544/2934735716';
  static String admobAndroidDev = 'ca-app-pub-3940256099942544/6300978111'; 

  static Locale globalUserLocale = const Locale('es','ES');
  static String? globalUserLanguage;
  static String? countrySelected;
  static void buildLanguage(Locale locale) {
    if(locale.languageCode == 'es') {
      globalUserLanguage = 'es';
    } else if (locale.languageCode == 'en') {
      globalUserLanguage = 'en';
    } else if (locale.languageCode == 'pt') {
      globalUserLanguage = 'pt';
    } else if (locale.languageCode == 'fr') {
      globalUserLanguage = 'fr';
    } else if (locale.languageCode == 'de') {
      globalUserLanguage = 'de';
    } else if (locale.languageCode == 'it') {
      globalUserLanguage = 'it';
    } else {
      globalUserLanguage = 'en';
    }
  }

  static void buildLocale(String language, String country) {
    globalUserLocale = Locale(language, country);
  }
}
