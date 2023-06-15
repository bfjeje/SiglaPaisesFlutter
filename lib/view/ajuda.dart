import 'package:flutter/material.dart';

class Ajuda extends StatelessWidget {
  const Ajuda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajuda"),
      ),
      body: Container(
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
              "Este aplicativo tem o objetivo de listar e pesquisar as siglas dos paises"),
        ),
      ),
    );
  }
}
