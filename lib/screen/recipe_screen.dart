import 'package:flutter/material.dart';
import 'package:nless/components/makeit/category.dart';
import 'package:nless/components/makeit/recipelist.dart';
import 'package:nless/components/makeit/homemade.dart';
// import 'package:nless/components/recipe.list.dart';

class Makeit_at_home extends StatelessWidget {
  final List<Map<String, dynamic>> cateoption = [
    {
      'text': 'Breakfast',
    },
    {
      'text': 'Lunch',
    },
    {
      'text': 'Dinner',
    },
    {
      'text': 'Desert',
    },
    {
      'text': 'pasta',
    },
    {
      'text': 'Vegan',
    },
    // Add more items as needed
  ];
  Makeit_at_home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 50, top: 30),
              child: Text(
                'Make it at home',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                  decoration: InputDecoration(
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: 'What recipe would you like to try today?',
                prefixIcon: const Icon(Icons.search),
              )),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 70,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: cateoption.length,
                  itemBuilder: (context, index) {
                    return Options(
                      text: cateoption[index]['text'],
                    );
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: RecipeData.recipes.length,
                  itemBuilder: (context, index) {
                    return MakeitList(recipe: RecipeData.recipes[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
