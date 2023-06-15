import 'package:flutter/material.dart';
import 'package:sigla_paises_flutter/service/requisicao.dart';
import 'package:sigla_paises_flutter/view/Menu.dart';

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
      body: Container(
        alignment: Alignment.center,
        child: TextButton(
          child: const Text("Listagem"),
          onPressed: () => Requisicao.requisicaoPaises(),
        ),
      ),
      drawer: Menu(),
    );
  }
}
