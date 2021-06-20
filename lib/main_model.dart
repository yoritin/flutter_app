import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String text = 'モデルのテキスト';

  void changeText() {
    text = 'テキストを変更する';
    notifyListeners();
  }
}