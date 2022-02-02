import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_meals_app/app/modules/favorits/views/favorits_view.dart';

import '../controllers/category_controller.dart';
import '../../../data/meals_data.dart';
import 'category_tile.dart';

class CategoryView extends GetView<CategoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView(
          padding: EdgeInsets.all(20),
          children: [
            ...categoryData
                .map(
                  (e) => CategoryTile(
                    color: e.color,
                    title: e.title,
                    id: e.id,
                  ),
                )
                .toList()
          ],
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 3,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
        ),
      ),
    );
  }
}
