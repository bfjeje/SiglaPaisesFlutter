import 'package:flutter/material.dart';
import 'package:sigla_paises_flutter/view/ajuda.dart';
import 'package:sigla_paises_flutter/view/mensagem.dart';
import 'package:sigla_paises_flutter/view/paises_screen.dart';

class Menu extends StatelessWidget with Mensagem {
  Menu({super.key});

  final TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.blue,
              height: 100.0,
              child: const Text(
                "Menu",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text("Pesquisar"),
              onTap: () => {
                Navigator.pop(context),
                showDialog(
                    context: context,
                    builder: (BuildContext context) => SimpleDialog(
                          title: const Text("Digite o nome do país"),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextField(
                                controller: search,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      showMensagem(
                                          "Operação cancelada", context);
                                    },
                                    child: const Text("Cancelar")),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  PaisesScreen(
                                                      pais: search.text)));
                                      showMensagem(
                                          "Pesquisa realizada para o país ${search.text}.",
                                          context);
                                    },
                                    child: const Text(
                                      "OK",
                                      style:
                                          TextStyle(color: Colors.blueAccent),
                                    ))
                              ],
                            )
                          ],
                        ))
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text("Ajuda"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const Ajuda()));
              },
            )
          ],
        ),
      ),
    );
  }
}
