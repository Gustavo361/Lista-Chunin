import 'package:flutter/material.dart';
import 'package:proj_lista_chunin/DAO/chuninDAO.dart';
import 'package:proj_lista_chunin/model/chunin.dart';
import 'package:proj_lista_chunin/screens/home/widgets/mains_screen.dart';

class ListOfChunins extends StatefulWidget {
  
  @override
  _ListOfChuninsState createState() => _ListOfChuninsState();
}

class _ListOfChuninsState extends State<ListOfChunins> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: chuninDAO.listRecords("chunins"),
      builder: builder,
    );
  }

  Widget builder(BuildContext context, AsyncSnapshot snapshot) {
    switch (snapshot.connectionState) {
      case ConnectionState.none:
      case ConnectionState.waiting:
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      default:
        return MainScreen(snapshot.data);
    }
  }
}
