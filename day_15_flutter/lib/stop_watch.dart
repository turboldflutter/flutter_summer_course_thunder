import 'dart:async';
import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  int seconds = 0;
  late Timer timer;
  bool isTicking = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stopwatch'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text(
          '$seconds ${_secondsText()}',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: isTicking ? _startTimer : null,
                child: const Text('Start')),
            SizedBox(
              width: 20,
            ),
            TextButton(
              onPressed: isTicking ? null: _stopTimer,
              child: Text('Stop'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  foregroundColor: MaterialStateProperty.all(Colors.white)),
            )
          ],
        )
      ]),
    );
  }

  void _startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), _onTick);
    setState(() {
      isTicking = false;
    });
  }
  void _stopTimer() {
    timer.cancel();
    setState(() {
      isTicking = true;
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  String _secondsText() => seconds == 1 ? 'second' : 'seconds';

  void _onTick(Timer timer) {
    setState(() {
      ++seconds;
    });
  }
}

