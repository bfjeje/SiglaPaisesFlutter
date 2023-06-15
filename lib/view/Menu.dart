import 'package:flutter/material.dart';

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
              leading: Icon(Icons.search),
              title: Text("Pesquisar"),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Ajuda"),
              onTap: () => {},
            )
          ],
        ),
      ),
    );
  }
}
