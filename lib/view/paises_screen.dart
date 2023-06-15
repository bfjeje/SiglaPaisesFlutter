import 'package:flutter/material.dart';
import 'package:sigla_paises_flutter/view/Menu.dart';
import 'package:sigla_paises_flutter/view/paises_dados.dart';

class PaisesScreen extends StatelessWidget {
  const PaisesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Siglas dos Países"),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.refresh))
        ],
      ),
      body: const PaisesDados(),
      drawer: const Menu(),
    );
  }
}
