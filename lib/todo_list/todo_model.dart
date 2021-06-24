import 'package:flutter/material.dart';

class TodoModel extends ChangeNotifier {

  var todos = [];

  void addTodo(String value) {
    todos.add(value);
    notifyListeners();
  }
}