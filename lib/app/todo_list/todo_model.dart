import 'package:flutter/material.dart';

class TodoModel extends ChangeNotifier {

  var todos = [];
  bool flag = true;

  void addTodo(String value) {
    todos.add(value);
    notifyListeners();
  }

  void handleCheckbox(bool? value) {
    flag = value!;
    notifyListeners();
  }
}