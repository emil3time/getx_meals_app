import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_meals_app/app/modules/home/views/category_tile.dart';

import '../controllers/category_controller.dart';
import 'category_data.dart';

class CategoryList extends GetView<CategoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MealsApp'),
        centerTitle: true,
      ),
      body: Container(

        child: GridView(
          padding: EdgeInsets.all(20),
          children: [
            ...categoryData
                .map((e) => CategoryTile(
                      color: e.color,
                      title: e.title,
                    ))
                .toList()
          ],
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 /3 ,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              ),
        ),
      ),
    );
  }
}
