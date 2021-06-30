import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/app/todo_list/todo_model.dart';

class AddTodo extends StatefulWidget {
  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Todo'),
      ),
      body: ChangeNotifierProvider<TodoModel>(
        create: (_) => TodoModel(),
        child: Consumer<TodoModel>(
          builder: (context, model, child) {
            return Container(
              margin: EdgeInsets.all(60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    autofocus: true,
                    onChanged: (String value) {
                      _text = value;
                    },
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text('Add'),
                      onPressed: () {
                        Navigator.of(context).pop(_text);
                      }
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: TextButton(
                      child: Text('cancel'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  )
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}