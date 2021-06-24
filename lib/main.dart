import 'package:flutter/material.dart';

import 'app_list.dart';
import 'counter/counter.dart';
import 'todo_list/index.dart';

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
