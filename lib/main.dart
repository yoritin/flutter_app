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
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Consumer<MainModel>(
          builder: (context, model, child) {
            return Scaffold(
              appBar: AppBar(
                title: Text('Flutterでいろいろなアプリを作る'),
              ),
              body: Center(
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        model.text,
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    RaisedButton(
                      child: Text('Counter'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Counter(),
                          )
                        );
                      }
                    ),
                    RaisedButton(
                      child: Text('Todo List'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Counter(),
                          )
                        );
                      }
                    ),
                  ]
                ),
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
