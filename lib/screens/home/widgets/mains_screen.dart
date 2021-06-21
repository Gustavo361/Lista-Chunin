import 'dart:html';

import 'package:flutter/material.dart';
import 'package:proj_lista_chunin/model/chunin.dart';
import 'package:proj_lista_chunin/shared/menu.dart';

class MainScreen extends StatelessWidget {
  final dynamic _data;
  late List<Chunin> _chunins;

  MainScreen(this._data);

  @override
  Widget build(BuildContext context) {
    _chunins = prepareChunins(_data);
    return Scaffold(
      appBar: AppBar(
        title: Text("Chunins inscritos"),
      ),
      drawer: Menu(),
      body: ListView.builder(
        itemBuilder: builder,
        itemCount: _chunins.length,
      ),
    );
  }

  Widget builder(BuildContext context, int index) {
    return ListTile(
      leading: Icon(Icons.account_box,
        size:70,
      ),
      title: Text(_chunins.elementAt(index).name!),
      subtitle: Text(_chunins.elementAt(index).village!),
      subtitle:NumberInputElement(_chunins.elementAt(index).age!),
      subtitle:Text(_chunins.elementAt(index).clan),
    );
  }

  List<Chunin> prepareChunins(dynamic data) {
    List<Chunin> chunins = [];
    for (int index = 0; index < data.length; index++) {
      chunins.add(Chunin.toObject(data[index]));
    }
    return chunins;
  }
}
