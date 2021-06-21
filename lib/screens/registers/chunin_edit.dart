import 'package:flutter/material.dart';
import 'package:proj_lista_chunin/model/chunin.dart';

class Chunin_edit extends StatelessWidget {
  final TextEditingController registrationController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController villageController = TextEditingController();
  // final TextEditingController ageController = TextEditingController();
  final TextEditingController clanController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edição chunin",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Registro Chunin"),
                keyboardType: TextInputType.number,
                controller: registrationController,
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Nome do chunin"),
                keyboardType: TextInputType.name,
                controller: nameController,
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Vila do chunin"),
                keyboardType: TextInputType.text,
                controller: villageController,
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Idade do chunin"),
                keyboardType: TextInputType.number,
                // controller: ageController,
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Clã do chunin"),
                keyboardType: TextInputType.text,
                controller: clanController,
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  saveRecord(context);
                },
                child: Text("Editar chunin"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void saveRecord(BuildContext mainContet) {
    int _registration = int.parse(registrationController.text);
    String _name = nameController.text;
    String _village = villageController.text;
    // int? _age = ageController.number;
    String _clan = clanController.text;

    // if(){
    //   Chunin chunin = Chunin(
    //     name: name,
    //     village: village,
    //     clan: clan,
    //   );
    // }
  }
}
