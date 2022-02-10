import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_meals_app/app/bindings/controller_bindings.dart';
import 'package:getx_meals_app/app/controllers/file_controller.dart';
import 'package:getx_meals_app/app/controllers/global_controller.dart';

import 'app/routes/app_pages.dart';

void main() async {
  // Get.put(GlobalController());
  // Get.put(FileController());
  await GetStorage.init();
  Get.put(GlobalController());

  runApp(
    GetMaterialApp(
      // global controler
      /* initialBinding: ControllerBinding(), */
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(255, 254, 229, 1),
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            subtitle1: TextStyle(
              fontSize: 25,
              fontFamily: 'ArcitectsDaughter',
              fontWeight: FontWeight.bold,
            )),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
            .copyWith(secondary: Colors.yellowAccent),
      ),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
