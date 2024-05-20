import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String theMovieDbApiKey = dotenv.env['THE_MOVIEDB_KEY'] ?? 'No Hay API KEY';
  static String titleApp = 'flutterTemplate';
  static String appleId = '6463052440';
  static String androidId = 'com.rcuadrado.flutterTemplate';

  static String admobIosProd = 'ca-app-pub-4459564398687058/7236545545';
  static String admobAndroidProd = 'ca-app-pub-4459564398687058/6297996259';
  static String admob2IosProd = 'ca-app-pub-4459564398687058/5072839644';
  static String admob2AndroidProd = 'ca-app-pub-4459564398687058/1715176424';

  static String admobIosDev = 'ca-app-pub-3940256099942544/2934735716';
  static String admobAndroidDev = 'ca-app-pub-3940256099942544/6300978111';
  static String admob2IosDev = 'ca-app-pub-3940256099942544/2934735716';
  static String admob2AndroidDev = 'ca-app-pub-3940256099942544/6300978111';  

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
