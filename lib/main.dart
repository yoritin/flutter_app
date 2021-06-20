import 'package:flutter/material.dart';
import 'package:flutter_app/main_model.dart';
import 'package:provider/provider.dart';

import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final String text = 'テキストが入る';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plants Log',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Consumer<MainModel>(
          builder: (context, model, child) {
            return Scaffold(
              appBar: AppBar(
                title: Text('タイトルです'),
              ),
              body: Center(
                  child: Text(
                    model.text,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  model.changeText();
                },
              ),
            );
          }
        ),
      ),
    );
  }
}
