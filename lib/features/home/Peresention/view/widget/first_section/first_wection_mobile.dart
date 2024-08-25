import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/animations/entrance_fader.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/home/Peresention/view_model/change_theme_cubit/change_theme_cubit.dart';
import 'package:provider/provider.dart';

class FirstSectionMobileView extends StatefulWidget {
  const FirstSectionMobileView({super.key});

  @override
  State<FirstSectionMobileView> createState() => _FirstSectionMobileView();
}

class _FirstSectionMobileView extends State<FirstSectionMobileView> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ChangeThemeCubit>(); // Listen for changes

    final themeMode = themeProvider.themeMode;
    final textColor = themeMode == ThemeMode.light ? AppColors.textColor : AppColors.whiteColor;
    final backgroundColor = themeMode == ThemeMode.light ? AppColors.lightBlack : AppColors.whiteColor;

    final screenWidth = ScreenSize.screeenWidth(context);
    final screenHeight = ScreenSize.screeenHeight(context);

    return SizedBox(
      height: screenHeight *1,width: screenWidth * 1,
      child: 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: SizedBox(
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 100),
                  Row(
                    children: [
                      Text(
                        hellotag,
                        style: AppStyles.styleRegular25(context).copyWith(
                          color: textColor,
                        ),
                      ),
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
                  Text(
                    yourname,
                    style: AppStyles.styleRegular40(context).copyWith(
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  AnimatedTextKit(
                    isRepeatingAnimation: true,
                    repeatForever: true,
                    animatedTexts: whatIDo
                        .map((text) => TyperAnimatedText(
                              text,
                              speed: const Duration(milliseconds: 50),
                              textStyle: AppStyles.styleRegular30(context).copyWith(
                                color: textColor,
                              ),
                            ))
                        .toList(),
                  ),                  const SizedBox(height: 5),

                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      miniDescription,
                      textAlign: TextAlign.justify,
                      style: AppStyles.styleRegular16(context).copyWith(
                        color: backgroundColor,
                      ),
                    ),
                  ),
                  const Spacer(flex: 2,),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    transform: Matrix4.translationValues(0, isHover ? -20 : 0, 0),
                    child: InkWell(
                      onHover: (value) {
                        setState(() {
                          isHover = value;
                        });
                      },
                      onTap: () {},
                      child: Container(
                        height: screenHeight * 0.07,
                        width: screenWidth * 0.35,
                        decoration: BoxDecoration(
                          color: isHover ? AppColors.secondaryColor : AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            downloadMyCv,
                            style: AppStyles.styleRegular20(context).copyWith(
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                   Center(
                    child: SizedBox(
                                height: screenHeight * 0.5,
                                child: Image.asset(
                                  "assets/images/me.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                  ),
                ],
              ),
            ),
          ),
        
       
    );
  }
}
