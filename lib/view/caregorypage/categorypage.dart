import 'package:flutter/material.dart';

import 'package:quizapp/controller/homescreencontroller.dart';

import 'package:quizapp/core/constants/colorconstants.dart';
import 'package:quizapp/view/caregorypage/categorymodel.dart';
import 'package:quizapp/view/firstscreen/firstscreen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Hi, Ajas",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("Lets make this day more productive"),
              trailing: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/20582700/pexels-photo-20582700/free-photo-of-a-person-standing-on-the-beach-at-sunset.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.darkGrey,
              ),
              alignment: Alignment.center,
              height: 45,
              width: 250,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Choose a category",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Lets play",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                CategoryModel category =
                    HomeScreenController.categoryList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizScreen(category: category),
                        ));
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(category.imgurl))),
                          ),
                        ),
                        Text(category.Name),
                        Text("5 Questions")
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.darkGrey),
                  ),
                );
              },
              itemCount: HomeScreenController.categoryList.length,
            )
          ],
        ),
      ),
    );
  }
}
