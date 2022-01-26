import 'package:flutter/material.dart';

  class Category {
 final  String id;
 final String title;
 final Color color;
// constructor should be a const to create immutable list in category_data.dart
const Category({this.color= Colors.deepPurple,required this.id,required this.title});



}
