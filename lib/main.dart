import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutterでいろいろなアプリを作る'),
        ),
        body: Center(
          child: Column(
            children: [
              RaisedButton(
                child: Text('Counter'),
                onPressed: () {}
              ),
              RaisedButton(
                child: Text('Todo List'),
                onPressed: () {}
              ),
            ]
          ),
        ),
      )
    );
  }
}
