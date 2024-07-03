import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: Color(0xffececec), borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
