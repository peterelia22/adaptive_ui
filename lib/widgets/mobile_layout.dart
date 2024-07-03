import 'package:adaptive_ui/widgets/Custom_list_view.dart';
import 'package:adaptive_ui/widgets/custom_sliver_grid.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        CustomSliverGrid(),
        CustomListView()
      ],
    );
  }
}
