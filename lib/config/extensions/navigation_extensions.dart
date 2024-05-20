import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension NoAnimationGoRouter on BuildContext {
  void goNoAnimation(String location) {
    GoRouter.of(this).go(location);
  }
}