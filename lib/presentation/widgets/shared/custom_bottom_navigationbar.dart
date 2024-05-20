import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final StatefulNavigationShell currentChild;

  const CustomBottomNavigationBar({super.key, required this.currentChild});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: currentChild.currentIndex,
      onTap: (index) => currentChild.goBranch(index),
      items: [
        BottomNavigationBarItem(
          label: AppLocalizations.of(context)!.first_view,
          icon: const Icon(Icons.home_outlined),
        ),
        BottomNavigationBarItem(
          label: AppLocalizations.of(context)!.second_view,
          icon: const Icon(Icons.play_arrow_rounded)
        ),
        BottomNavigationBarItem(
          label: AppLocalizations.of(context)!.third_view,
          icon: const Icon(Icons.favorite_outline)
        )
      ]
    );
  }
}