import 'package:flutter/material.dart';
import 'package:sigla_paises_flutter/service/requisicao.dart';

class PaisesDados extends StatefulWidget {
  const PaisesDados({super.key});

  @override
  State<PaisesDados> createState() => _PaisesDadosState();
}

class _PaisesDadosState extends State<PaisesDados> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder(
            future: Requisicao.requisicaoPaises(),
            builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
              if (snapshot.hasData) {
                List? paises = snapshot.data;
                return _listaPaises(paises);
              } else {
                return Container(
                  alignment: Alignment.center,
                  child: const Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Text(
                      "Carregando ...",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                );
              }
            })
      ],
    );
  }

  Widget _listaPaises(List? paises) {
    return paises != null
        ? Flexible(
            child: ListView.builder(
                itemCount: paises.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ExpansionTile(
                      title: Text(
                        "${paises[index]["name"]}",
                        style: const TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${paises[index]["code"] ?? "--"}",
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }))
        : Container(
            alignment: Alignment.center,
            child: const Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                "Carregando ...",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          );
  }
}
