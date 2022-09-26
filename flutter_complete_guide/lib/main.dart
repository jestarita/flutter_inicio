// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "Mi primera app",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Mi primera aplicacion"),
          ),
          body: new Container(
            child: new Center(
              child: new Text("Aplicacion corriendo en flutter"),
            ),
          ))));
}
