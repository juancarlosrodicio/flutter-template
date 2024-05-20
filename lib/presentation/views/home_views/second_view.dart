import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SecondView extends ConsumerStatefulWidget {
  const SecondView({super.key});

  @override
  ConsumerState<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends ConsumerState<SecondView> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second view'),
      ),
      body: const Center(
        child: Text('Second View'),
      )
    );
  }

}
