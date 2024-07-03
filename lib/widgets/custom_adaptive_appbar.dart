import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomAdaptiveAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAdaptiveAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 900) {
        return myappbar();
      } else {
        return SizedBox();
      }
    });
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56);
}

class myappbar extends StatelessWidget {
  const myappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: GestureDetector(
        onTap: () {
          //    scaffoldKey.currentState!.openDrawer();
        },
        child: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
    );
  }
}
