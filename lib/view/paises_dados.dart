import 'package:flutter/material.dart';
import 'package:sigla_paises_flutter/service/requisicao.dart';

class PaisesDados extends StatefulWidget {

  final String pais;

  PaisesDados({this.pais = ""});

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
                List<Map<String, dynamic>>? paises = snapshot.data?.cast<Map<String, dynamic>>();
                return _listaPaises(_filtraPais(widget.pais, paises, context));
              } else {
                return Container(
                  alignment: Alignment.center,
                  child: Padding(
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

  Widget _listaPaises(List<Map<String, dynamic>>? paises) {
    return paises != null
        ? Flexible(
            child: ListView.builder(
                itemCount: paises.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ExpansionTile(
                      title: Text(
                        "${paises[index]["name"]}",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${paises[index]["code"] ?? "--"}",
                              style: TextStyle(
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
            child: Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                "Carregando ...",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          );
  }

  List<Map<String, dynamic>>? _filtraPais(String pais, List<Map<String, dynamic>>? paises, BuildContext context) {
    List<Map<String, dynamic>> filtro = List.empty(growable: true);
    paises?.forEach((p) {
      if(p["name"] == pais){
        filtro.add(p);
      }
    });
    return filtro.isEmpty ? paises : filtro;
  }
}
