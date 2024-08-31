import 'package:flutter/material.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/about/peresntation/view/widget/web/about_view_web_card.dart';
import 'package:portfolio/features/about/peresntation/view/widget/web/text_about_container.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AboutSectionViewBodyMobile extends StatelessWidget {
  const AboutSectionViewBodyMobile({super.key});

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
            
            Text(
              about,
              style: AppStyles.styleRegular40(context),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                SizedBox(
                  width: screenWidth * 1,
                  child: MasonryGridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    padding: const EdgeInsets.only(top: 5, right: 5, left: 13),
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return index == 0
                          ? const SizedBox(
                              width: 5,
                            )
                          : AboutViewCard(
                              index: index,
                              titleFontSize: 14,
                              descFontSize: 12,
                            );
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextAboutContainer(width: 1, height: .35,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
