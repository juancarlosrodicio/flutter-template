import 'package:fluttertemplate/config/extensions/navigation_extensions.dart';
import 'package:fluttertemplate/config/helpers/initialization_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class InitializeScreen extends StatefulWidget {
  final Widget targetWidget;

  const InitializeScreen({super.key, required this.targetWidget});

  @override
  State<InitializeScreen> createState() => _InitializeScreenState();
}

class _InitializeScreenState extends State<InitializeScreen> {
  final _initializationHelper = InitializationHelper();

  @override
  void initState() {
    super.initState();

    _initialize();
  }

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: Center(
          child: SizedBox.shrink(),
        ),
      );

  Future<void> _initialize() async {

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      FlutterNativeSplash.remove();
      await _initializationHelper.initialize();
      if (mounted) {
        context.goNoAnimation('/');
      }  
      
    });
  }
}
