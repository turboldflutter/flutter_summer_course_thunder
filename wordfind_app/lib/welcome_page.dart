import 'package:flutter/material.dart';

import 'gradient_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GradientText('Game', 31.6),
      ),
    );
  }
}
