import 'package:flutter/material.dart';

import 'gradient_letter.dart';
import 'gradient_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/back1.png'), fit: BoxFit.fitWidth),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 200),
              child: Expanded(
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GradientLetter('W'),
                      GradientLetter('O'),
                      GradientLetter('R'),
                      GradientLetter('D'),
                    ],
                  ),
                  GradientText('Game', 31.6),
                  SizedBox(height: 50,),
                  Image(image: AssetImage('assets/iCodeGuy.png'),)
                ],
              )),
            ),
            Expanded(child: GradientText('READY', 25.0)),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 310,
        height: 60,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
          borderRadius: BorderRadius.circular(25),
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
          child: const Text(
            'PLAY',
            style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
