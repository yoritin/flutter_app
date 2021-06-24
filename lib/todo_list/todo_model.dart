import 'package:flutter/material.dart';

class TodoModel extends ChangeNotifier {

  var todos = [
    'ビーサンを買う',
    'シュノーケルマスクを買う',
    'Flutterの勉強をするaa'
  ];

  void addTodo(String value) {
    todos.add(value);
    print(todos);
    notifyListeners();
  }
}