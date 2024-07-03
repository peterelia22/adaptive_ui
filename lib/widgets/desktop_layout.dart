import 'package:adaptive_ui/widgets/Custom_drawer.dart';
import 'package:adaptive_ui/widgets/Tablet_layout.dart';
import 'package:adaptive_ui/widgets/custom_desktop_widget.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TabletLayout(),
            )),
        Expanded(child: CustomDesktopWidget())
      ],
    );
  }
}
