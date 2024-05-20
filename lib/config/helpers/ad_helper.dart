import 'dart:io';

import 'package:fluttertemplate/config/constants/environment.dart';


class AdHelper {

  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return Environment.admobAndroidProd;
    } else if (Platform.isIOS) {
      return Environment.admobIosProd;
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

}
