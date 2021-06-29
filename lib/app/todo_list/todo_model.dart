import 'package:flutter/material.dart';

class TodoModel extends ChangeNotifier {

  List<String> todos = [];
  List<bool> statuses = [];

  void addTodo(String value) {
    todos.add(value);
    statuses.add(false);
    notifyListeners();
  }

  void handleCheckbox(bool? value, int i) {
    statuses[i] = value!;
    // flag = value!;
    notifyListeners();
  }
}