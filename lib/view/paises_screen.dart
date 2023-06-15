import 'package:flutter/material.dart';
import 'package:sigla_paises_flutter/service/requisicao.dart';

class PaisesScreen extends StatelessWidget {
  const PaisesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Siglas dos Países"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: TextButton(
          child: Text("Listagem"),
          onPressed: () => Requisicao.requisicaoPaises(),
        ),
      ),
    );
  }
}
