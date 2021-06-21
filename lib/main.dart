import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:proj_lista_chunin/screens/home/listOfChunins.dart';
import 'package:proj_lista_chunin/screens/registers/chunin_register.dart';
import 'package:proj_lista_chunin/screens/registers/chunin_remove.dart';

void main() {
  if (Platform.isAndroid) {
    runApp(MaterialApp(
      title: "Cadastro chunin",
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(BuildContext context)=>
        ListOfChunins(),
        "/chunin_register":(BuildContext context)=>
        Chunin_register(),
        "/Chunin_edit":(BuildContext context)=>
        Chunin_register(),
        "Chunin_remove":(BuildContext context)=>
        Chunin_remove(),
      },
      initialRoute: "/",
      theme: ThemeData(
        primarySwatch: Colors.red,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      ),
    ));
  } else {
    runApp(CupertinoApp());
  }
}
