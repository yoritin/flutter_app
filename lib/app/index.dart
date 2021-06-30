import 'package:flutter/material.dart';

import 'counter/counter.dart';
import 'todo_list/index.dart';

class AppList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutterでいろいろなアプリを作る'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Counter())
                );
              },
              child: ListTile(
                title: Text('Counter'),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoList())
                );
              },
              child: ListTile(
                title: Text('Todo List'),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: ElevatedButton(
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
              child: ElevatedButton(
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