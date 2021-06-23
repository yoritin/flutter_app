import 'package:flutter/material.dart';

import 'counter/counter.dart';

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
      home: AppList()
    );
  }
}

class AppList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutterでいろいろなアプリを作る'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: RaisedButton(
                child: Text('Counter'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Counter())
                  );
                }
              ),
            ),
          ]
        ),
      ),
    );
  }
}
