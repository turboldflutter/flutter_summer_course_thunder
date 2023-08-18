import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:icodegram_app/pages/login.dart';
import 'package:icodegram_app/pages/sign_up.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(
    home: SignUpScreen(),
  ));
}
