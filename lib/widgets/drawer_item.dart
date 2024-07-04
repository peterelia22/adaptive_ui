import 'package:adaptive_ui/main.dart';
import 'package:adaptive_ui/models/drawer_item_model.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItem,
  });
  final DrawerItemModel drawerItem;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawerItem.icon),
      title: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            drawerItem.tittle,
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontBaseSize: 18)),
          )),
    );
  }
}
