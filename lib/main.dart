import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
      ),
      body: MyWidget(),
    ),
  ));
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            child: Text(
              'Liste 1',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Text(
              'Liste 2',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Text(
              'Liste 3',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
