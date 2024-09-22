import 'package:flutter/material.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/about/peresntation/view/widget/web/about_view_web_card.dart';
import 'package:portfolio/features/about/peresntation/view/widget/web/text_about_container.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AboutSectionViewBodyWeb extends StatelessWidget {
  const AboutSectionViewBodyWeb({super.key});

  @override
  Widget build(BuildContext context) {
    
    final screenWidth = ScreenSize.screeenWidth(context);

    return SizedBox(
      width: screenWidth * 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 30,
            ),
            SelectableText(
              about,
              style: AppStyles.styleRegular40(context),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: screenWidth * 0.5,
                  child: MasonryGridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    padding: const EdgeInsets.only(top: 5, right: 5, left: 13),
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return index == 0
                          ? const SizedBox(
                              height: 5,
                            )
                          : AboutViewCard(
                              index: index,
                              titleFontSize: 20,
                              descFontSize: 20,
                            );
                    },
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const TextAboutContainer(width: 0.4, height: 0.2,)
              ],
            )
            , const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
