
import 'package:fluttertemplate/config/constants/environment.dart';

class Countries {

  static Map<String, String> locale = {
    'Argentina': 'es-AR',
    'Australia': 'en-AU',
    'Brasil': 'pt-BR',
    'Canada': 'en-CA',
    'Chile': 'es-CL',
    'Colombia': 'es-CO',
    'Costa Rica': 'es-CR',
    'Deutschland': 'de-DE',
    'España': 'es-ES',
    'Ecuador': 'es-EC',
    'El salvador': 'es-SV',
    'France': 'fr-FR',
    'Guatemala': 'es-GT',
    'Ireland': 'en-IE',    
    'Italia': 'it-IT',
    'Mexico': 'es-MX',
    'New Zealand': 'en-NZ',
    'Perú': 'es-PE',
    'Portugal': 'pt-PT',
    'República Dominicana': 'es-DO',
    'United Kingdom': 'en-GB',
    'United States': 'en-US',
    'Uruguay': 'es-UY',
    'Venezuela': 'es-VE'
  };

  static List<String> availableCountries = locale.keys.toList();

  static String getCountryByIso() {
    String iso = [Environment.globalUserLocale.languageCode, '-', Environment.globalUserLocale.countryCode].join();

    for(var entry in locale.entries) {
      if(entry.value == iso) {
        return entry.key;
      }
    }

    return '';
  }

  static void getCountryByLocale(String language) {
    
    for (var entry in locale.entries) {
      if(language == entry.value) {
        Environment.countrySelected = entry.key;
      }
    }
  }
}
