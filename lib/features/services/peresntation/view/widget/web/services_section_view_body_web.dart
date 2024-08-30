import 'package:flutter/material.dart';
import 'package:portfolio/core/animations/entrance_fader.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/home/Peresention/view_model/change_theme_cubit/change_theme_cubit.dart';
import 'package:portfolio/features/services/peresntation/view/widget/web/services_card_web.dart';
import 'package:provider/provider.dart';

class ServicesSectionViewBodyWeb extends StatelessWidget {
  const ServicesSectionViewBodyWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ChangeThemeCubit>(); // Listen for changes

    final screenWidth = ScreenSize.screeenWidth(context);
    final screenHeight = ScreenSize.screeenHeight(context);

    return SizedBox(
      width: screenWidth * 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [          const SizedBox(height: 30,),

            Text(
              services,
              style: AppStyles.styleRegular40(context),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: screenHeight*0.6,
              width: screenWidth * 1,
              child: EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(milliseconds: 0),
                duration: const Duration(milliseconds: 800),
                child: GridView.builder(
                  padding: const EdgeInsets.only(left: 13, right: 13, top: 8),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: screenHeight * 0.25,
                    crossAxisSpacing: 40,
                    mainAxisSpacing: 40,
                  ),
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return ServicesViewCard(
                      // isHovered: isHoverd[index], // Not needed in stateless
                      index: index, titleFontSize: 20, descFontSize: 16,
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