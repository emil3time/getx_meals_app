import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryTile extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryTile({required this.title, required this.color, required this.id});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      splashColor: Theme.of(context).primaryColor,
      onTap: () {
        Get.toNamed('/meals', arguments: {'id':id,'title': title,'color': color});
        // Navigator.of(context).pushNamed('/meals', arguments: {'id':id,'title': title,'color': color});
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [color.withOpacity(0.5), color]),
          ),
          child: Center(
            child: Text(title , style: Theme.of(context).textTheme.subtitle1),
          )),
    );
  }
}
