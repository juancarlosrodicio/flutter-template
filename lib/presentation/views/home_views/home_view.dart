import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends ConsumerState<HomeView> {
  String? countryLoaded;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    FlutterNativeSplash.remove();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home view'),
      ),
    );

  } 
}