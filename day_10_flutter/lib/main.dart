import 'package:flutter/material.dart';

void main() {
  const Text text = Text(
    'Hello',
    style: TextStyle(fontSize: 34, color: Color(0xff3456ee)),
  );

  const Center textCenter = Center(
    child: text,
  );
  final Container container = Container(
    child: textCenter,
  );

  final Scaffold myScaffold = Scaffold(
    appBar: AppBar(
      title: textCenter,
      actions: const [Icon(Icons.heart_broken)],
    ),
    body: container,
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.edit),
    ),
  );

  final MaterialApp app = MaterialApp(
    home: myScaffold,
    theme: ThemeData(fontFamily: 'Ribeye'),
  );
  runApp(app);
}
