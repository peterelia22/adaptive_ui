import 'package:adaptive_ui/widgets/Custom_list_view.dart';
import 'package:adaptive_ui/widgets/custom_list_view_tablet.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        CustomListViewTablet(),
        CustomListView()
      ],
    );
  }
}
