import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('カウンター')
      ),
      body: Container(
        child: Text('カウンター')
      )
    );
  }
}