import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/animations/entrance_fader.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/home/Peresention/view_model/change_theme_cubit/change_theme_cubit.dart';
import 'package:provider/provider.dart';

class FirstSectionView extends StatefulWidget {
  const FirstSectionView({super.key});

  @override
  State<FirstSectionView> createState() => _FirstSectionViewState();
}

class _FirstSectionViewState extends State<FirstSectionView> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.read<ChangeThemeCubit>();

    return SizedBox(
      height: ScreenSize.screeenHeight(context) * 0.7,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: SizedBox(
              width: ScreenSize.screeenWidth(context) * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 100),
                  Row(
                    children: [
                      Text(
                        hellotag, // Ensure this variable is defined and imported
                        style: AppStyles.styleRegular25(context).copyWith(
                          color: themeProvider.themeMode == ThemeMode.light
                              ? AppColors.textColor
                              : AppColors.whiteColor,
                        ),
                      ),
                      EntranceFader(
                        offset: const Offset(0, 0),
                        delay: const Duration(seconds: 2),
                        duration: const Duration(milliseconds: 800),
                        child: Image.asset(
                          "assets/gif/hi.gif", // Verify this path
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    yourname, // Ensure this variable is defined and imported
                    style: AppStyles.styleRegular40(context).copyWith(
                      color: themeProvider.themeMode == ThemeMode.light
                          ? AppColors.textColor
                          : AppColors.whiteColor,
                    ),
                  ),
                
                      AnimatedTextKit(
                        isRepeatingAnimation: true,
                        repeatForever: true,
                        animatedTexts:
                            whatIDo // Ensure this list is defined and imported
                                .map((text) => TyperAnimatedText(
                                      text,
                                      speed: const Duration(milliseconds: 50),
                                      textStyle:
                                          AppStyles.styleRegular30(context)
                                              .copyWith(
                                        color: themeProvider.themeMode ==
                                                ThemeMode.light
                                            ? AppColors.textColor
                                            : AppColors.whiteColor,
                                      ),
                                    ))
                                .toList(),
                      ),
                  
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: SizedBox(
                      width: ScreenSize.screeenWidth(context) * 0.35,
                      child: Text(
                        miniDescription, // Ensure this variable is defined and imported
                        textAlign: TextAlign.justify,
                        style: AppStyles.styleRegular16(context).copyWith(
                          color: themeProvider.themeMode == ThemeMode.light
                              ? AppColors.lightBlack
                              : AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    transform:
                        Matrix4.translationValues(0, isHover ? -20 : 0, 0),
                    child: InkWell(
                      onHover: (value) {
                        setState(() {
                          isHover = value;
                        });
                      },
                      onTap: () {},
                      child: Container(
                        height: ScreenSize.screeenHeight(context) * 0.07,
                        width: ScreenSize.screeenWidth(context) * 0.2,
                        decoration: BoxDecoration(
                          color: isHover
                              ? AppColors.secondaryColor
                              : AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            downloadMyCv, // Ensure this text is translated if needed
                            style: AppStyles.styleRegular20(context).copyWith(
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),                  const Spacer(),

                ],
              ),
            ),
          ),
          Positioned(
              top: 10,
              right: 10,
              child: SizedBox(
                height: ScreenSize.screeenHeight(context) * 0.7,
                child: Image.asset(
                  "assets/images/me.png",
                  fit: BoxFit.cover,
                ),
              ))
        ],
      ),
    );
  }
}
