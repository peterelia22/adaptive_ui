import 'package:adaptive_ui/widgets/Custom_Card.dart';
import 'package:flutter/material.dart';

class CustomListViewTablet extends StatelessWidget {
  const CustomListViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 145,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(right: 8),
                child: AspectRatio(aspectRatio: 1, child: CustomCard()),
              );
            }),
      ),
    );
  }
}
