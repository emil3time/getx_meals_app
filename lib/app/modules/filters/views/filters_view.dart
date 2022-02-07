import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_meals_app/app/modules/tabs_and_drawer.dart/views/drawer_view.dart';

import '../../../controllers/global_controller.dart';
import '../controllers/filters_controller.dart';

const ktitle = TextStyle(fontSize: 25, fontWeight: FontWeight.w400);
const ksubtitle = TextStyle(
  fontSize: 16,
);

class FiltersView extends GetView<FiltersController> {
  final controller =
      Get.put(FiltersController()); // In case you are not using named routing
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawer: CustomDrawer(),
        appBar: AppBar(
          title: Text('FiltersView'),
          centerTitle: true,
        ),
        body: Obx(() => Column(
              children: [
                Text(
                  'Adjust your meal Selection ${Get.find<GlobalController>().userId.value}',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
                SwitchListTile(
                  onChanged: (value) {
                    controller.gluten.value = value;
                    controller.updateFilters('gluten', value);
                    print(controller.gluten.value);
                  },
                  value: controller.gluten.value,
                  title: Text(
                    'Gluten-free',
                    style: ktitle,
                  ),
                  subtitle: Text(
                    'only gluten',
                    style: ksubtitle,
                  ),
                ),
                SwitchListTile(
                  onChanged: (value) {
                    controller.lactose.value = value;
                    controller.updateFilters('lactose', value);
                  },
                  value: controller.lactose.value,
                  title: Text(
                    'Lactose-free',
                    style: ktitle,
                  ),
                  subtitle: Text(
                    'only lactose',
                    style: ksubtitle,
                  ),
                ),
                SwitchListTile(
                  onChanged: (value) {
                    controller.vegetarian.value = value;
                    controller.updateFilters('vegetarian', value);
                  },
                  value: controller.vegetarian.value,
                  title: Text(
                    'Vegetarian ',
                    style: ktitle,
                  ),
                  subtitle: Text(
                    'no meat',
                    style: ksubtitle,
                  ),
                ),
                SwitchListTile(
                  onChanged: (value) {
                    controller.vegan.value = value;
                    controller.updateFilters('vegan', value);
                  },
                  value: controller.vegan.value,
                  subtitle: Text(
                    'only Vege',
                    style: ksubtitle,
                  ),
                  title: Text(
                    'Vege',
                    style: ktitle,
                  ),
                ),
              ],
            )));
  }
}
