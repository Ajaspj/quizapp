import 'package:flutter/material.dart';
import 'package:quizapp/view/splashscreen/splashscreen.dart';

void main() {
  runApp(Qizapp());
}

class Qizapp extends StatelessWidget {
  const Qizapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
