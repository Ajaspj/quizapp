import 'package:flutter/material.dart';
import 'package:quizapp/controller/homescreencontroller.dart';
import 'package:quizapp/core/constants/colorconstants.dart';
import 'package:quizapp/view/caregorypage/categorymodel.dart';

import 'package:quizapp/view/firstscreen/firstscreen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.rightanswercount,
      required this.wronganswercount,
      required this.totalanswercount,
      required this.category});
  final int rightanswercount;
  final int wronganswercount;
  final int totalanswercount;
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    final persentage =
        (rightanswercount / HomeScreenController.flutterQuestions.length) * 100;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "congrats",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text(
              "your score is ${persentage.round()}%",
              style:
                  TextStyle(color: ColorConstants.primaryGreen, fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "correct answer ${rightanswercount}",
              style:
                  TextStyle(color: ColorConstants.primaryWhite, fontSize: 20),
            ),
            Text(
              "wrong answer ${wronganswercount}",
              style:
                  TextStyle(color: ColorConstants.primaryWhite, fontSize: 20),
            ),
            Text(
              "skipped questions ${totalanswercount - wronganswercount - rightanswercount}",
              style:
                  TextStyle(color: ColorConstants.primaryWhite, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizScreen(
                          category: category,
                        ),
                      ));
                },
                child: Text("Restart"))
          ],
        ),
      ),
    );
  }
}
