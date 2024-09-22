import 'package:flutter/material.dart';
import 'package:portfolio/core/animations/entrance_fader.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/services/peresntation/view/widget/web/services_card_web.dart';

class ServicesSectionViewBodyMobile extends StatelessWidget {
  const ServicesSectionViewBodyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    
    final screenWidth = ScreenSize.screeenWidth(context);
    final screenHeight = ScreenSize.screeenHeight(context);

    return SizedBox(
      width: screenWidth * 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 20,
            ),
            SelectableText(
              services,
              style: AppStyles.styleRegular40(context),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: screenHeight * 1,
              width: screenWidth * 1,
              child: EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(milliseconds: 0),
                duration: const Duration(milliseconds: 800),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(left: 13, right: 13, top: 8),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisExtent: screenHeight * 0.2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return ServicesViewCard(
                      // isHovered: isHoverd[index], // Not needed in stateless
                      index: index, titleFontSize: 16, descFontSize: 14,
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
