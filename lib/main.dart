import 'package:flutter/material.dart';

import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plants Log',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: PlantsList(),
    );
  }
}

class PlantsList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('タイトルです'),
      ),
      body: Center(
        child: PlantsText(),
      ),
    );
  }
}

class PlantsText extends StatefulWidget {

  @override
  _PlantsTextState createState() => _PlantsTextState();
}

class _PlantsTextState extends State<PlantsText> {

  String _text = 'plants';

  @override
  Widget build(BuildContext context) {
    return Text(_text);
  }
}
