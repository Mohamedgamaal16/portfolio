import 'package:flutter/material.dart';
import 'package:portfolio/core/providers/scroll_provider.dart';
import 'package:portfolio/core/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return ScrollablePositionedList.builder(
      itemScrollController: scrollProvider.itemScrollController,
      scrollOffsetController: scrollProvider.scrollOffsetController,
      scrollOffsetListener: scrollProvider.scrollOffsetListener,
      itemPositionsListener: scrollProvider.itemPositionsListener,
      itemCount: BodyUtils.views(scrollProvider).length,
      itemBuilder: (BuildContext context, int index) {
        return BodyUtils.views(scrollProvider)[index];
      },
    );
  }
}
