import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/favorits_controller.dart';

class FavoritsView extends GetView<FavoritsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Text(
          'FavoritsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
