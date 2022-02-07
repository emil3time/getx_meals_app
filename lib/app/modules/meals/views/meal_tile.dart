import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../controllers/meals_controller.dart';
import 'meal_model.dart';

class MealTile extends GetView<MealsController> {
  Meal sortedMeal;
  MealTile({required this.sortedMeal});

  /* dinamicly converting enums from meal_data to string interpretation*/
//
  get affordability {
    switch (sortedMeal.affordability) {
      case Affordability.Affordable:
        return 'Affotrable';

      case Affordability.Pricey:
        return 'Pricey';

      case Affordability.Luxurious:
        return 'Luxurious';

      default:
        return 'unknown';
    }
  }

  get complexity {
    switch (sortedMeal.complexity) {
      case Complexity.Challenging:
        return 'Challenging';

      case Complexity.Hard:
        return 'Hard';

      case Complexity.Simple:
        return 'Simple';

      default:
        'unknown';
    }
  }

  @override
  Widget build(BuildContext context) {


    return InkWell(
      onTap: () {
        Get.toNamed('/meal-recipes',arguments: sortedMeal);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          height: 350,
          width: 350,
          child: Stack(
            children: [
              Container(
                height: 288,
                width: 384,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                  child: Image.network(
                    sortedMeal.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 240,
                right: 10,
                child: Container(
                  width: 340,
                  height: 40,
                  color: Colors.black54,
                  child: FittedBox(
                      child: Text(sortedMeal.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Ralleway'))),
                ),
              ),
              Positioned(
                top: 290,
                height: 62,
                width: 384,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.access_time),
                        Text(
                          '${sortedMeal.duration.toString()} min',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.accessibility),
                        Text(complexity)
                        //   style: kTextSubTitle,
                        // )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.account_balance_wallet_rounded),
                        Text(affordability)
                        //   style: kTextSubTitle,
                        // )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
