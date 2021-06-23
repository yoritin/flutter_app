import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List')
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'タスク',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    child: CheckboxListTile(
                      title: Text('チェックボックス'),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: true,
                      onChanged: (bool? value) {},
                    ),
                  ),
                  Card(
                    child: CheckboxListTile(
                      title: Text('チェックボックス'),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}