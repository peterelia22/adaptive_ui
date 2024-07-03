import 'package:adaptive_ui/widgets/Custom_drawer.dart';
import 'package:adaptive_ui/widgets/custom_adaptive_appbar.dart';
import 'package:adaptive_ui/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xffdcdcdc),
      appBar: buildAppBar(context),
      body: const HomeViewBody(),
      drawer: CustomDrawer(),
    );
  }

  AppBar? buildAppBar(BuildContext context) {
    return MediaQuery.sizeOf(context).width - 32 <= 900
        ? AppBar(
            backgroundColor: Colors.black,
            leading: GestureDetector(
              onTap: () {
                scaffoldKey.currentState!.openDrawer();
              },
              child: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          )
        : null;
  }
}
