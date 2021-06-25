import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/app/todo_list/add.dart';
import 'package:flutter_app/app/todo_list/todo_model.dart';

class TodoList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoModel>(
      create: (_) => TodoModel(),
      child: Consumer<TodoModel>(
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Todo List')
            ),
            body: Container(
              width: double.infinity,
              child: ListView.builder(
                itemCount: model.todos.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: CheckboxListTile(
                      title: Text(model.todos[index]),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: model.flag,
                      onChanged: (bool? value) {
                        model.handleCheckbox(value);
                      },
                    ),
                  );
                },
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
                // add.dartから状態を受け取ってtodosに追加
                if (result != null) {
                  model.addTodo(result);
                }
              },
            ),
          );
        }
      ),
    );
  }
}