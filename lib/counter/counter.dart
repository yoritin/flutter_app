import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter')
      ),
      body: ChangeNotifierProvider<CounterModel>(
        create: (_) => CounterModel(),
        child: Consumer<CounterModel>(
          builder: (context, model, child) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: <Widget>[
                      Text(
                        'You have pushed the button this many times:',
                      ),
                      Text(
                        '${model.counter}',
                        style: Theme.of(context).textTheme.display1,
                      ),
                    ],
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            model.countDown();
                          },
                          child: Icon(Icons.remove),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            model.countUp();
                          },
                          child: Icon(Icons.add),
                        )
                      ],
                    ),
                  )
                ],
              )
            );
          }
        )
      ),
    );
  }
}