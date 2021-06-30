import 'package:flutter/material.dart';

class TodoModel extends ChangeNotifier {

  List<String> todos = [];
  List<bool> statuses = [];

  void addTodo(String value) {
    todos.add(value);
    statuses.add(false);
    notifyListeners();
  }
  
  void deleteTodo(int index) {
    todos.removeAt(index);
    statuses.removeAt(index);
    notifyListeners();
  }

  void handleCheckbox(bool? value, int index) {
    statuses[index] = value!;
    notifyListeners();
  }
}