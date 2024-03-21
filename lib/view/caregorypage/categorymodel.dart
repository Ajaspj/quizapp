import 'package:quizapp/model/questions.dart';

class CategoryModel {
  String Name;
  List<QuestionsModel> questions;
  String imgurl;

  CategoryModel({
    required this.Name,
    required this.imgurl,
    required this.questions,
  });
}
