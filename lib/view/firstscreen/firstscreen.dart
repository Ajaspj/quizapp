import 'package:flutter/material.dart';

import 'package:quizapp/core/constants/colorconstants.dart';
import 'package:quizapp/view/caregorypage/categorymodel.dart';
import 'package:quizapp/view/result_screen/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({
    super.key,
    required this.category,
  });
  final CategoryModel category;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQstnIndex = 0;
  int? selectedAnswerIndex;
  int rightanswercount = 0;
  int wronganswercount = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.primaryBlack,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorConstants.darkGrey),
                child: Text(
                  widget.category.questions[currentQstnIndex].question,
                  style: TextStyle(
                      color: ColorConstants.primaryWhite, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: List.generate(
                    widget.category.questions[currentQstnIndex].optionsList
                        .length,
                    (index) => InkWell(
                          onTap: () {
                            if (selectedAnswerIndex == null) {
                              selectedAnswerIndex = index;
                              if (selectedAnswerIndex ==
                                  widget.category.questions[currentQstnIndex]
                                      .correctAnswerIndex) {
                                rightanswercount++;
                              } else {
                                wronganswercount++;
                              }
                              setState(() {});
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: (index ==
                                                  widget
                                                      .category
                                                      .questions[
                                                          currentQstnIndex]
                                                      .correctAnswerIndex &&
                                              selectedAnswerIndex != null)
                                          ? Colors.green
                                          : selectedAnswerIndex == index
                                              ? (selectedAnswerIndex ==
                                                      widget
                                                          .category
                                                          .questions[
                                                              currentQstnIndex]
                                                          .correctAnswerIndex
                                                  ? Colors.green
                                                  : Colors.red)
                                              : ColorConstants.primaryGrey),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    widget.category.questions[currentQstnIndex]
                                        .optionsList[index],
                                    style: TextStyle(
                                        color: ColorConstants.primaryWhite,
                                        fontSize: 18),
                                  ),
                                  Icon(
                                    Icons.close_rounded,
                                    color: ColorConstants.primaryGreen,
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (currentQstnIndex < widget.category.questions.length - 1) {
                    currentQstnIndex++;
                    selectedAnswerIndex = null;
                    setState(() {});
                  } else {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreen(
                                category: widget.category,
                                wronganswercount: wronganswercount,
                                totalanswercount:
                                    widget.category.questions.length,
                                rightanswercount: rightanswercount)));
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstants.primaryBlue),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      currentQstnIndex == widget.category.questions.length - 1
                          ? "finish"
                          : selectedAnswerIndex == null
                              ? "skip"
                              : "Next",
                      style: TextStyle(
                          color: ColorConstants.primaryWhite, fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Color buldcolor(int index) {
    if (index ==
            widget.category.questions[currentQstnIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      //to show right anw if selected answer is not null
      return ColorConstants.primaryGreen;
    } else if (index == selectedAnswerIndex) {
      // /to show wheater the asw is right or wrong
      if (selectedAnswerIndex == widget.category.questions[currentQstnIndex]) {
        return ColorConstants.primaryGreen;
      } else {
        return Colors.red;
      }
    } else {
      // /to show the defult color
      return ColorConstants.primaryGrey;
    }
  }

  IconData? buildIcons(int index) {
    if (index ==
            widget.category.questions[currentQstnIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      return Icons.done;
    } else if (index == selectedAnswerIndex) {
      if (selectedAnswerIndex !=
          widget.category.questions[currentQstnIndex].correctAnswerIndex) {
        return Icons.close;
      }
    } else {
      return null;
    }
  }
}
