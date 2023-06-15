import 'package:flutter/material.dart';
import 'package:sigla_paises_flutter/view/ajuda.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

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
              onTap: () => {},
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text("Ajuda"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder:
                  (BuildContext context) => const Ajuda()));
              },
            )
          ],
        ),
      ),
    );
  }
}
