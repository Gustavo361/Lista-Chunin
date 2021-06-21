import 'package:flutter/material.dart';
import 'package:proj_lista_chunin/model/chunin.dart';
import 'package:proj_lista_chunin/shared/menu.dart';

class Chunin_register extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController villageController = TextEditingController();
  // NumberInputElement ageController = NumberInputElement();
  TextEditingController clanController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro chunin"),
      ),
      drawer: Menu(),
        body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Nome do chunin",
                ),
                keyboardType: TextInputType.name,
                controller: nameController,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Vila do chunin",
                ),
                keyboardType: TextInputType.text,
                controller: villageController,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Idade do chunin",
                ),
                keyboardType: TextInputType.number,
                // controller: ageController,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "clã do chunin",
                ),
                keyboardType: TextInputType.text,
                controller: clanController,
              ),
              SizedBox(
                height: 18,
              ),
              ElevatedButton(
                onPressed: () {
                  saveRegister();
                },
                child: Text("Cadastrar chunin"),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void saveRegister() {
    String name = nameController.text;
    String village = villageController.text;
    // int age = ageController.number; ???????????
    String clan = clanController.text;

    if(){
      Chunin chunin = Chunin(
        name: name,
        village: village,
        clan: clan,
      );
    }
  }
}