import 'package:adaptive_ui/widgets/Custom_Card.dart';
import 'package:adaptive_ui/widgets/custom_card2.dart';
import 'package:flutter/material.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 2, child: CustomCard()),
        SizedBox(
          height: 16,
        ),
        Expanded(child: CustomCard2())
      ],
    );
  }
}
