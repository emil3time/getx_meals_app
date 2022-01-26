import 'package:flutter/material.dart';

import 'meals_model.dart';



class MealsTile extends StatelessWidget {
  Meal meal;
  MealsTile({required this.meal});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
                    meal.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 250,
                right: 10,
                child: Container(
                  color: Colors.white70,
                  child: Text(
                    meal.title,
                    // style: kTextMainTitle,
                  ),
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
                          meal.duration.toString(),
                          // style: kTextSubTitle,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.accessibility),
                        // Text(
                        //   complexity,
                        //   style: kTextSubTitle,
                        // )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.account_balance_wallet_rounded),
                        // Text(
                        //   complexity,
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
