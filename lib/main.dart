import 'package:flutter/material.dart';

import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final String text = 'テキストが入る';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plants Log',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('タイトルです'),
        ),
        body: Center(
            child: Text(
              '$text',
              style: TextStyle(
                fontSize: 30,
              ),
            )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}
