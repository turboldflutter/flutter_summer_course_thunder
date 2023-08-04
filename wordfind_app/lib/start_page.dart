import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Image.asset('assets/arrow_back.png')),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          height: 50.0,
          child: Image(image: 'assets/game_logo.png'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: AssetImage('assets/game_logo.png'),
          fit: BoxFit,
        ),
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Image.asset('assets/iCodeGuyHead.png'),
              Padding(padding: EdgeInsets.only(top: 20)),
              GradientText('Player Name', 20.0),
              Padding(padding: EdgeInsets.only(top: 20))
            ],
          ),
        ),
      ),
      floatingActionButton: StartButton('Start'),
    );
  }
}

class StartButton {
}
