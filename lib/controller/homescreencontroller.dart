import 'package:quizapp/model/questions.dart';
import 'package:quizapp/view/caregorypage/categorymodel.dart';

class HomeScreenController {
  static List<CategoryModel> categoryList = [
    CategoryModel(
      Name: "Flutter",
      imgurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRg8ge3A87Xi304CuPL4CVnVixenD1Qj-ZMKSgzYBzbJbL1U65KKKTyCp6MlCQBW9HNtWE&usqp=CAU",
      questions: flutterQuestions,
    ),
    CategoryModel(
      Name: "Sports",
      imgurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUIS36E08KGwCImpRjB1vTQBPJLW3t1HHEcaLOywE7k-qWfam5PBOiiHme1c1NkxzuvbY&usqp=CAU ",
      questions: sportsQuestions,
    ),
    CategoryModel(
      Name: "chemistry",
      imgurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzz3GZLlcPttzwpJE4XOdpWiCsLaQJviLmDWyKsHJ3en3PypHKkD6wku7ZcBts5z40Yss&usqp=CAU",
      questions: chemistryQuestions,
    ),
    CategoryModel(
      Name: "maths",
      imgurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWA5gIibxiSwe7r1bvxoOtXq7lVy4eH13A2NtZZZ4h24hXEN4zSY8brFzj7Qgj7Dfz4u0&usqp=CAU",
      questions: mathQuestions,
    ),
  ];
  static List<QuestionsModel> flutterQuestions = [
    QuestionsModel(
      question: "What does Flutter use for layout?",
      optionsList: ["XML", "Dart", "Widgets", "HTML"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "Which widget is used to create a button in Flutter?",
      optionsList: ["Text", "Button", "RaisedButton", "FlatButton"],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: "What is the main building block of a Flutter application?",
      optionsList: ["Widgets", "Views", "Activities", "Fragments"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "How can you manage state in Flutter?",
      optionsList: [
        "SetState",
        "StatefulWidget",
        "StatelessWidget",
        "Provider"
      ],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: "What language is used to write Flutter apps?",
      optionsList: ["JavaScript", "Java", "Dart", "Python"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "Which IDE is commonly used for Flutter development?",
      optionsList: ["Eclipse", "Xcode", "Visual Studio Code", "Android Studio"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question:
          "What is the widget used to create a list with a builder in Flutter?",
      optionsList: ["ListView", "ListBuilder", "ListTile", "ListWidget"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question:
          "What is the purpose of the MaterialApp widget in a Flutter app?",
      optionsList: [
        "Create Material Design components",
        "Handle app routing",
        "Set app icons",
        "None of the above"
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question:
          "Which Flutter command is used to run the app on a connected device or emulator?",
      optionsList: [
        "flutter build",
        "flutter test",
        "flutter run",
        "flutter install"
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "What is the function of the setState() method in Flutter?",
      optionsList: [
        "Rebuild the entire UI",
        "Update the state of a widget",
        "Retrieve data from a database",
        "None of the above"
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is a widget in Flutter?",
      optionsList: [
        "A small electronic device",
        "A functional component",
        "A UI element",
        "A type of database"
      ],
      correctAnswerIndex: 2,
    ),
  ];
  static List<QuestionsModel> sportsQuestions = [
    QuestionsModel(
      question:
          "In soccer, what is the name of the area where the goalkeeper can handle the ball with their hands?",
      optionsList: ["Penalty Box", "Goal Area", "D-Box", "Midfield"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "Which sport is often referred to as 'The Sport of Kings'?",
      optionsList: ["Polo", "Golf", "Horse Racing", "Tennis"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question:
          "What is the maximum number of players allowed on the field at one time in a baseball game?",
      optionsList: ["8", "9", "10", "11"],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "In basketball, how many points is a three-point shot worth?",
      optionsList: ["1", "2", "3", "4"],
      correctAnswerIndex: 2,
    ),
  ];
  static List<QuestionsModel> chemistryQuestions = [
    QuestionsModel(
      question: "What is the chemical symbol for water?",
      optionsList: ["W", "H2O", "O2", "H2"],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "Which element has the chemical symbol 'Fe'?",
      optionsList: ["Iron", "Gold", "Silver", "Copper"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the pH scale used to measure?",
      optionsList: ["Temperature", "Pressure", "Acidity", "Density"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "Which gas makes up the majority of Earth's atmosphere?",
      optionsList: ["Oxygen", "Nitrogen", "Carbon Dioxide", "Hydrogen"],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is the chemical formula for table salt?",
      optionsList: ["NaCl", "H2O", "CO2", "C6H12O6"],
      correctAnswerIndex: 0,
    ),
  ];
  static List<QuestionsModel> mathQuestions = [
    QuestionsModel(
      question: "What is the value of π (pi) rounded to two decimal places?",
      optionsList: ["3.14", "3.16", "3.18", "3.20"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the square root of 144?",
      optionsList: ["12", "10", "14", "16"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "Which of the following is not a prime number?",
      optionsList: ["7", "9", "11", "13"],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is the value of 6 factorial (6!)?",
      optionsList: ["720", "120", "5040", "360"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the result of 7 squared?",
      optionsList: ["49", "36", "64", "81"],
      correctAnswerIndex: 0,
    ),
  ];
}
