import 'package:adaptive_ui/models/drawer_item_model.dart';
import 'package:adaptive_ui/views/about_view.dart';
import 'package:adaptive_ui/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        if (index == 2) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const AboutView();
              }));
            },
            child: DrawerItem(drawerItem: items[index]),
          );
        } else {
          return DrawerItem(drawerItem: items[index]);
        }
      },
    );
  }
}
