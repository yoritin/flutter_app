import 'package:flutter/material.dart';

import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
        children: List.generate(10, (index) {
          return Center(
            child: Container(
              width: 100,
              height: 160,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          children: <Widget>[
                            SimpleDialogOption(
                              onPressed: () => Navigator.pop(context),
                              child: Row(
                                  children: [
                                    Container(
                                      width: 180,
                                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                                child: Text('基礎から学ぶFlutter', style: TextStyle(fontWeight: FontWeight.bold))
                                            ),
                                            Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                                child: Text('Flutterの本です。Flutterの本です。Flutterの本です。Flutterの本です。Flutterの本です。Flutterの本です。')
                                            ),
                                            RaisedButton(
                                              child: Text('ダウンロード'),
                                              color: Colors.green,
                                              textColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              onPressed: () {
                                                // PDR Viewerを開く
                                              },
                                            )
                                          ]
                                      ),
                                    ),
                                    Expanded(
                                        child: Container(
                                            width: 80,
                                            height: 120,
                                            child: Image.network('https://images-na.ssl-images-amazon.com/images/I/81r-0HdedOL.jpg')
                                        )
                                    )
                                  ]
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Image.network('https://images-na.ssl-images-amazon.com/images/I/81r-0HdedOL.jpg')
              ),
            ),
          );
        }),
      )
    );
  }
}
