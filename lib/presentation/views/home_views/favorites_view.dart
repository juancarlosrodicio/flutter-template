
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ThirdView extends ConsumerStatefulWidget {
  const ThirdView({super.key});

  @override
  ThirdViewState createState() => ThirdViewState();
}

class ThirdViewState extends ConsumerState<ThirdView> {

  bool isLoading = false;
  bool isLastPage = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Third view'),
      ),
      body: const Center(
        child: Text('Third View'),
      )
    );
  }
}