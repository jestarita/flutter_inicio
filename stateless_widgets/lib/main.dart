// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double textSize = 40.0;
    final TextStyle textStyle =
        new TextStyle(color: Colors.grey, fontSize: 30.0);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateless widget"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyCard(
                title: new Text(
                  "I want better on flutter",
                  style: textStyle,
                ),
                icon: new Icon(Icons.favorite,
                    size: textSize, color: Color.fromARGB(255, 177, 21, 10)),
              ),
              new MyCard(
                title: new Text(
                  "I like this tutorial",
                  style: textStyle,
                ),
                icon: new Icon(Icons.thumb_up,
                    size: textSize, color: Colors.blue[600]),
              ),
              new MyCard(
                title: new Text(
                  "Next video",
                  style: textStyle,
                ),
                icon: new Icon(Icons.queue_play_next,
                    size: textSize, color: Color.fromARGB(255, 12, 12, 12)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  MyCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 0.1),
      child: new Card(
          child: new Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[this.title, this.icon],
        ),
      )),
    );
  }
}
