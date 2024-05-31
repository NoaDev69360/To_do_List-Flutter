import 'package:flutter/material.dart';

void main() => runApp(const ListTileApp());

class ListTileApp extends StatelessWidget {
  const ListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        listTileTheme: const ListTileThemeData(
          textColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const ListTileExample(),
    );
  }
}

class ListTileExample extends StatefulWidget {
  const ListTileExample({super.key});

  @override
  State<ListTileExample> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
  List<String> items = ['Liste 1', 'Liste 2', 'Liste 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('To do List')),
      body: Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items.map((item) {
            return ListTile(
              title: Text(item),
              tileColor: Colors.cyan,
              onTap: () {
                setState(() {
                  items.remove(item);
                });
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
