import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/category_controller.dart';
import '../../../data/meals_data.dart';
import 'category_tile.dart';

class CategoryView extends GetView<CategoryController> {
  RxInt index = 0.obs;
  void screenChanger(index) {
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MealsApp',
        ),
        centerTitle: true,
      ),
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
      bottomNavigationBar: BottomNavigationBar(
        onTap: screenChanger,
        items: [],
      ),
    );
  }
}
