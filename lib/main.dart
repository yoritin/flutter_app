import 'package:flutter/material.dart';
import 'package:flutter_app/main_model.dart';
import 'package:provider/provider.dart';

import 'counter/counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

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
              body: Row(
                children: [
                  Text(
                    model.text,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  RaisedButton(
                    child: Text('カウンター'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Counter(),
                        )
                      );
                    }
                  )
                ]
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
