import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String title;
  final Color color;
  CategoryTile({required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [color.withOpacity(0.5), color]),
        ),
        child: Center(
          child: Text(
            title,style: TextStyle(fontSize: 24),

          ),
        ));
  }
}
