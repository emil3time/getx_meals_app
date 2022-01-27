

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}
enum Complexity {
  Simple,
  Challenging,
  Hard,
}

 class Meal {
  final String id;
  final int duration;
  final String imageUrl;
  final String title;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;
  final Affordability affordability;
  final Complexity complexity;

  const Meal(
      {required this.affordability,
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
      required this.title,
      required this.duration});
}
