import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/animations/entrance_fader.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/home/Peresention/view/widget/first_section/custom_download_cv.dart';
import 'package:portfolio/features/home/Peresention/view_model/change_theme_cubit/change_theme_cubit.dart';
import 'package:provider/provider.dart';

class FirstSectionWebView extends StatelessWidget {
  const FirstSectionWebView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ChangeThemeCubit>(); // Listen for changes

    final screenWidth = ScreenSize.screeenWidth(context);
    final screenHeight = ScreenSize.screeenHeight(context);

    return SizedBox(
      height: screenHeight * 0.7,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: SizedBox(
              width: screenWidth * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 100),
                  Row(
                    children: [
                      SelectableText(hellotag, style: AppStyles.styleRegular25(context)),
                      EntranceFader(
                        offset: const Offset(0, 0),
                        delay: const Duration(seconds: 2),
                        duration: const Duration(milliseconds: 800),
                        child: Image.asset(
                          "assets/gif/hi.gif",
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  SelectableText(yourname, style: AppStyles.styleRegular40(context)),
                  const SizedBox(height: 5),
                  AnimatedTextKit(
                    isRepeatingAnimation: true,
                    repeatForever: true,
                    animatedTexts: whatIDo
                        .map((text) => TyperAnimatedText(text,
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppStyles.styleRegular30(context)))
                        .toList(),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: SizedBox(
                      width: screenWidth * 0.35,
                      child: SelectableText(miniDescription,
                          textAlign: TextAlign.justify,
                          style: AppStyles.styleRegular16(context)),
                    ),
                  ),
                  const Spacer(),
                  const CustomDownloadCv(height: 0.2,),
                  const Spacer(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: SizedBox(
              height: screenHeight * 0.7,
              child: Image.asset(
                "assets/images/me.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}