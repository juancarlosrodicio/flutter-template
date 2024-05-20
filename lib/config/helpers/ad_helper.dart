import 'dart:io';

import 'package:flutterTemplate/config/constants/environment.dart';


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

    static String get bannerAdUnitId2 {
    if (Platform.isAndroid) {
      return Environment.admob2AndroidProd;
    } else if (Platform.isIOS) {
      return Environment.admob2IosProd;
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}