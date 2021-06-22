import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterModel>(
      create: (_) => CounterModel(),
      child: Consumer<CounterModel>(
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Counter')
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${model.counter}',
                    style: Theme.of(context).textTheme.display1,
                  ),
                ],
              )
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                model.countUp();
              },
              child: Icon(Icons.add)
            ),
          );
        }
      ),
    );
  }
}