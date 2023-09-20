import 'package:day_17_flutter/provider/user_provider.dart';
import 'package:day_17_flutter/screens/home_screen.dart';
import 'package:day_17_flutter/screens/login_screen.dart';
import 'package:day_17_flutter/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UserProvider()),
        ],
        child: MaterialApp(
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 1),
            textTheme: Typography().white.apply(fontFamily: 'Rubik'),
          ),
          home: StreamBuilder(
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.active) {
                if (snapshot.hasData) {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) =>
                  return HomeScreen();
                }
                if (snapshot.hasError) {
                  // if this is true
                  return Center(child: Text('${snapshot.error}'));
                }
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                    child: CircularProgressIndicator(
                  color: Colors.white,
                ));
              }
              return LoginScreen();
            },
            // stream: FirebaseAuth.instance.authStateChanges(),
          ),
        )),
  );
}
