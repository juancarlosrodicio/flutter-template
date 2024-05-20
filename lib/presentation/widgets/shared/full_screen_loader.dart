import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getLoadiongMessages(){
    final messages = <String>[
    'Cargando películas',
    'Comprando palomitas',
    'Cargando populares',
    'Cargando próximos estrenos',
    'Cargando mejor valoradas',
    'Esto está tardando más de lo esperado :('
  ];

    return Stream.periodic(const Duration(milliseconds: 1200), (step){
      return messages[step];
    }).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: CircularProgressIndicator.adaptive(strokeWidth: 2)),
          const SizedBox(height: 10),
          StreamBuilder(
            stream: getLoadiongMessages(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const Text('Cargando...');

              return Text(snapshot.data!);
            },
          )
        ]
      )
    );
  }
}