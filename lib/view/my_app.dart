import 'package:flutter/material.dart';
import 'package:sigla_paises_flutter/view/paises_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Siglas dos Países',
      home: PaisesScreen(),
    );
  }
}