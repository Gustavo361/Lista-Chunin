import 'package:flutter/material.dart';
import 'package:proj_lista_chunin/model/chunin.dart';

class Chunin_remove extends StatelessWidget {
  final TextEditingController registrationController = TextEditingController();

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
                decoration: InputDecoration(labelText: "Remoção Chunin"),
                keyboardType: TextInputType.number,
                controller: registrationController,
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  saveRecord(context);
                },
                child: Text("Excluir chunin"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void saveRecord(BuildContext mainContet) {
    // int _registration = int.parse(registrationController.text);
    // String _name = nameController.text;
    // String _village = villageController.text;
    // // int? _age = ageController.number;
    // String _clan = clanController.text;

    // if(){
    //   Chunin chunin = Chunin(
    //     name: name,
    //     village: village,
    //     clan: clan,
    //   );
    // }
  }
}
