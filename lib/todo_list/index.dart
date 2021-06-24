import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List')
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text('ビーサンを買う'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('シュノーケルマスクを買う'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}