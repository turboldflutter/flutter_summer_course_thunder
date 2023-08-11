import 'package:flutter/material.dart';
import 'package:wordfind_app/start_page.dart';
import 'welcome_page.dart';
import 'task_page.dart';
import 'gradient_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Word Find Game',
      theme: ThemeData(
        fontFamily: 'Ribeye',
      ),
      home: const WelcomePage(),
    );
  }
}