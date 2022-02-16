import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meals_app/app/routes/app_pages.dart';

import 'bottom_bar_view.dart';

Widget _buildListTile(
  IconData icon,
  String title,
  VoidCallback onTap,
) {
  return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 28),
      ),
      onTap: onTap);
}

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background),
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 70,
                    ),
                    Positioned.fill(
                      top: 15,
                      left: 60,
                      child: Text(
                        'selection  panel',
                        style: TextStyle(fontSize: 44),
                      ),
                    )
                  ],
                )),
            _buildListTile(Icons.fastfood, 'category', () {
              /* Get.back(); */
              /* print('drower here'); */
              Get.offAllNamed(Routes.TABS);
            }),
            Divider(
              color: Theme.of(context).colorScheme.background,
              thickness: 4,
              indent: 25,
            ),
            _buildListTile(
                Icons.filter_frames,
                'filters',
                () => Get.toNamed(
                      Routes.FILTERS,
                    )),
            Divider(
              color: Theme.of(context).colorScheme.background,
              thickness: 4,
              indent: 55,
            ),
          ],
        ),
      ),
    );
  }
}
