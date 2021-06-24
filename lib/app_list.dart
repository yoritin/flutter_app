import 'package:flutter/material.dart';

import 'counter/counter.dart';
import 'todo_list/index.dart';

class AppList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutterでいろいろなアプリを作るa'),
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
            Container(
              child: RaisedButton(
                child: Text('Todo List'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TodoList())
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