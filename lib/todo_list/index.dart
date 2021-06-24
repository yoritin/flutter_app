import 'package:flutter/material.dart';
import 'package:flutter_app/todo_list/add.dart';

class TodoList extends StatelessWidget {

  final todos = [
    'aaa',
    'bbb',
    'ccc'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List')
      ),
      body: Container(
        width: double.infinity,
        child: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(todos[index])
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTodo())
          );
        },
      ),
    );
  }
}