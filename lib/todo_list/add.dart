import 'package:flutter/material.dart';

class AddTodo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Todo'),
      ),
      body: Container(
        margin: EdgeInsets.all(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: Text('Add'),
                onPressed: () {}
              ),
            ),
            Container(
              width: double.infinity,
              child: TextButton(
                child: Text('cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            )
          ],
        ),
      ),
    );
  }
}