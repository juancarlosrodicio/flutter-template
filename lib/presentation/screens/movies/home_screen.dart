import 'package:flutterTemplate/config/constants/environment.dart';
import 'package:flutter/material.dart';

import 'package:flutterTemplate/presentation/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  static const name = 'home-screen';
  final StatefulNavigationShell childView;

  const HomeScreen({super.key, required this.childView});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    Environment.buildLanguage(Localizations.localeOf(context));

    return Scaffold(
      body: childView,
      bottomNavigationBar: CustomBottomNavigationBar(currentChild: childView),
    );
  }
}
