import 'package:flutter/material.dart';
import 'immutable_widget.dart';

void main() {
  runApp(const ImmutableWidget());
}

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Wellcome to Flutter'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.edit),
          )
        ],
      ),
      body: const Center(
        child: AspectRatio(
          aspectRatio: 1.0,
          child: ImmutableWidget(),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: const Text('I"m a drawer'),
        ),
      ),
    );
  }
}
