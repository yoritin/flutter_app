import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
          actions: <Widget>[
            Icon(Icons.add)
          ],
        ),
        backgroundColor: Colors.yellow,
        body: Center(
          child: Text(
            'Welcome to Flutter !!',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
