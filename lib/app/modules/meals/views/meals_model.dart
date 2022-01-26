import 'package:flutter/material.dart';

enum Affortability {
  cheap,
  pricey,
  luxorious,
}
enum Complexity {
  easy,
  medium,
  hard,
}

class Meal {
  final String id;

  String imageUrl;
  String title;
  List<String> categories;
  List<String> ingredients;
  List<String> steps;
  bool isGlutenFree;
  bool isVegan;
  bool isVegetarian;
  bool isLactoseFree;
  Affortability affortability;
  Complexity complexity;

  Meal(
      {required this.affortability,
      required this.categories,
      required this.complexity,
      required this.id,
      required this.imageUrl,
      required this.ingredients,
      required this.isGlutenFree,
      required this.isLactoseFree,
      required this.isVegan,
      required this.isVegetarian,
      required this.steps,
      required this.title});
}
