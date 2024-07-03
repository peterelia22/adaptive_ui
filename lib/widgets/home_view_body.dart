import 'package:adaptive_ui/widgets/Tablet_layout.dart';
import 'package:adaptive_ui/widgets/adaptive_layout.dart';
import 'package:adaptive_ui/widgets/desktop_layout.dart';
import 'package:adaptive_ui/widgets/mobile_layout.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout());
  }
}
