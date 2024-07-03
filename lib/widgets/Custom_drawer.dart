import 'package:adaptive_ui/models/drawer_item_model.dart';
import 'package:adaptive_ui/widgets/drawer_item.dart';
import 'package:adaptive_ui/widgets/drawer_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});
  final List<DrawerItemModel> items = const [
    DrawerItemModel(icon: Icons.home, tittle: "H O M E"),
    DrawerItemModel(icon: Icons.settings, tittle: "S E T T I N G S"),
    DrawerItemModel(icon: Icons.info, tittle: "A B O U T"),
    DrawerItemModel(icon: Icons.logout, tittle: "L O G  O U T")
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffdbdbdb),
      child: Column(
        children: [
          DrawerHeader(
              child: Icon(
            FontAwesomeIcons.solidHeart,
            size: 40,
          )),
          DrawerListView(items: items)
        ],
      ),
    );
  }
}
