import 'package:fluttertemplate/config/helpers/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMob extends StatefulWidget {
  const AdMob({super.key});


  @override
  State<AdMob> createState() => AdMobState();
}

class AdMobState extends State<AdMob> {

    late BannerAd _bannerAd;
    bool _isLoaded = false;

  @override
  void initState() {
    super.initState();
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          _isLoaded = false;
          ad.dispose();
        },
      ),
    );

    _bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {

    if (_isLoaded) {
      return Center(
        child: SizedBox(
          width: _bannerAd.size.width.toDouble(),
          height: _bannerAd.size.height.toDouble(),
          child: AdWidget(ad: _bannerAd),
        ),
      );
    }
    return const SizedBox(
      width: 320,
      height: 50,
    );
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }
}