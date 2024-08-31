import 'package:flutter/material.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/features/home/Peresention/view_model/change_theme_cubit/change_theme_cubit.dart';
import 'package:provider/provider.dart';

abstract class AppStyles {
  static TextStyle styleRegular20(BuildContext context) {
    final themeProvider = context.watch<ChangeThemeCubit>();

    return TextStyle(
        color: themeProvider.themeMode == ThemeMode.light
            ? AppColors.primaryColor
            : AppColors.whiteColor,
        fontFamily: 'josefinsans',
        fontWeight: FontWeight.w300,
        fontSize: ScreenSize.screeenWidth(context) < 1200
            ? getResponsiveFontSize(context, fontSize: 18)
            : getResponsiveFontSize(context, fontSize: 20));
  }

  static TextStyle styleRegular25(BuildContext context) {
    final themeProvider = context.watch<ChangeThemeCubit>();

    return TextStyle(
        color: themeProvider.themeMode == ThemeMode.light
            ? AppColors.blackColor
            : AppColors.whiteColor,
        fontFamily: 'josefinsans',
        fontWeight: FontWeight.w500,
        fontSize: ScreenSize.screeenWidth(context) < 1200
            ? getResponsiveFontSize(context, fontSize: 20)
            : getResponsiveFontSize(context, fontSize: 25));
  }

  static TextStyle styleRegular40(BuildContext context) {
    final themeProvider = context.watch<ChangeThemeCubit>();

    return TextStyle(
        color: themeProvider.themeMode == ThemeMode.light
            ? AppColors.blackColor
            : AppColors.whiteColor,
        fontFamily: 'josefinsans',
        fontWeight: FontWeight.w500,
        fontSize: ScreenSize.screeenWidth(context) < 1200
            ? getResponsiveFontSize(context, fontSize: 25)
            : getResponsiveFontSize(context, fontSize: 40));
  }

  static TextStyle styleBold40(BuildContext context) {
    final themeProvider = context.watch<ChangeThemeCubit>();

    return TextStyle(
        color: themeProvider.themeMode == ThemeMode.light
            ? AppColors.blackColor
            : AppColors.whiteColor,
        fontFamily: 'josefinsans',
        fontWeight: FontWeight.w700,
        fontSize: ScreenSize.screeenWidth(context) < 1200
            ? getResponsiveFontSize(context, fontSize: 20)
            : getResponsiveFontSize(context, fontSize: 40));
  }

  static TextStyle styleRegular30(BuildContext context) {
    final themeProvider = context.watch<ChangeThemeCubit>();

    return TextStyle(
        color: themeProvider.themeMode == ThemeMode.light
            ? AppColors.blackColor
            : AppColors.whiteColor,
        fontFamily: 'josefinsans',
        fontWeight: FontWeight.w500,
        fontSize: ScreenSize.screeenWidth(context) < 1200
            ? getResponsiveFontSize(context, fontSize: 20)
            : getResponsiveFontSize(context, fontSize: 30));
  }

  static TextStyle styleRegular16(BuildContext context) {
    final themeProvider = context.watch<ChangeThemeCubit>();

    return TextStyle(
        color: themeProvider.themeMode == ThemeMode.light
            ? AppColors.blackColor
            : AppColors.whiteColor,
        fontFamily: 'josefinsans',
        fontWeight: FontWeight.w300,
        fontSize: ScreenSize.screeenWidth(context) < 1200
            ? getResponsiveFontSize(context, fontSize: 14)
            : getResponsiveFontSize(context, fontSize: 16));
  }

  static TextStyle styleRegular14(BuildContext context) {
    final themeProvider = context.watch<ChangeThemeCubit>();

    return TextStyle(
        color: themeProvider.themeMode == ThemeMode.light
            ? AppColors.lightBlack
            : AppColors.whiteColor,
        fontFamily: 'josefinsans',
        fontWeight: FontWeight.w300,
        fontSize: ScreenSize.screeenWidth(context) < 1200
            ? getResponsiveFontSize(context, fontSize: 14)
            : getResponsiveFontSize(context, fontSize: 15));
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .7;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  if (width < 600) {
    return width / 450;
  } else if (width < 1200) {
    return width / 800;
  } else {
    return width / 1500;
  }
}
