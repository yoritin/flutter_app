import 'package:flutter/material.dart';

import 'next_page.dart';

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
      home: MyHomePage(title: 'Plants Log'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var plants = ['ionantha', 'usneoides'];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(plants.length, (index) {
          return Center(
            child: Card(
              child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          children: <Widget>[
                            SimpleDialogOption(
                              onPressed: () => Navigator.pop(context),
                              child: Container(
                                child: Text(plants[index])
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Image.network('https://lh3.googleusercontent.com/proxy/-3PLSDtzqEP4T1xkc1diG1U4HzM_A-E8OsGBBicb8sHhz7Gk6WuZJhfs2t0BAguLZJ_2OSaVekv15Azp42xI-qWW3XxRmyqcY5qvlXk2H8i0dsTvuSa_pIsySyMB9AVkd1zZD8vmTuHC8orjlgvL8SxQWEEPsp79m44')
              ),
            ),
          );
        }),
      )
    );
  }
}
