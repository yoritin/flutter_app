import 'package:flutter/material.dart';
import 'package:flutter_app/todo_list/add.dart';
import 'package:flutter_app/todo_list/todo_model.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List')
      ),
      body: ChangeNotifierProvider<TodoModel>(
        create: (_) => TodoModel(),
        child: Consumer<TodoModel>(
          builder: (context, model, child) {
            return Container(
              width: double.infinity,
              child: ListView.builder(
                itemCount: model.todos.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(model.todos[index])
                    ),
                  );
                },
              ),
            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddTodo()
            )
          );

          if (result != null) {
            // modelからaddTodoを呼び出す
            print(result);
          }
        },
      ),
    );
  }
}