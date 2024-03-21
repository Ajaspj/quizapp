import 'package:flutter/material.dart';
import 'package:quizapp/controller/homescreencontroller.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.rightanswercount});
  final int rightanswercount;

  @override
  Widget build(BuildContext context) {
    final persentage =
        (rightanswercount / HomeScreenController.flutterQuestions.length);
    return Scaffold(
      body: Center(
        child: Text("your score is ${persentage.round()}%"),
      ),
    );
  }
}
