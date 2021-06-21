import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/", (route) => false);
              },
              icon: Icon(Icons.group),
              label: Text("Listar chunin"),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/chunin_register", (route) => false);
              },
              icon: Icon(Icons.add),
              label: Text("Cadastrar chunin"),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, "/chunin_edit", (route)=> false);
              },
              icon: Icon(Icons.edit),
              label: Text("Editar chunin"),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                context, "/Chunin_remove",(route) => false);
              },
              icon: Icon(Icons.delete),
              label: Text("Deletar chunin"),
            ),
          ],
        ),
      ),
    );
  }
}
