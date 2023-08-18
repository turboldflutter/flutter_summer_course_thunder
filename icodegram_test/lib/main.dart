import 'package:day_17_flutter/screens/home_screen.dart';
import 'package:day_17_flutter/screens/login_screen.dart';
import 'package:day_17_flutter/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(
    home: SignUpScreen(),
  ));
}
