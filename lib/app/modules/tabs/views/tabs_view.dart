import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../category/views/category_view.dart';
import '../../favorits/views/favorits_view.dart';
import '../controllers/tabs_controller.dart';

class TabsView extends GetView<TabsController> {
  final List<Tab> myTabs = <Tab>[
    Tab(
      text: 'favorite',
      icon: Icon(Icons.favorite_border_outlined),
    ),
    Tab(
      text: 'category',
      icon: Icon(Icons.category_outlined),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Meals'),
          bottom: TabBar(
            tabs: myTabs,
            indicatorColor:Colors.white,
            unselectedLabelColor: Colors.purpleAccent,


          ),
        ),
        body: TabBarView(children: [FavoritsView(), CategoryView()]),
      ),
    );
  }
}
