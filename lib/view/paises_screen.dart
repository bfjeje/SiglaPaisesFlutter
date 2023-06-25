import 'package:flutter/material.dart';
import 'package:sigla_paises_flutter/view/menu.dart';
import 'package:sigla_paises_flutter/view/paises_dados.dart';

class PaisesScreen extends StatelessWidget {
  final String pais;

  const PaisesScreen({super.key, this.pais = ""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Siglas dos Países"),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.refresh))
        ],
      ),
      body: PaisesDados(pais: pais),
      drawer: Menu(),
    );
  }
}
