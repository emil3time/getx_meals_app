import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      /* smartManagement: SmartManagement.onlyBuilder, */
      theme: ThemeData(
        backgroundColor:Color.fromRGBO(255, 254, 229, 1),
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
