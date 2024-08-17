import 'package:flutter/material.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/functions/function.dart';

abstract class AppStyles {
  static TextStyle styleRegular20(BuildContext context) {
    return TextStyle(
        color: AppColors.primaryColor,
        fontFamily: 'josefinsans',
        fontWeight: FontWeight.w300,
        fontSize: ScreenSize.screeenWidth(context) < 1200
            ? getResponsiveFontSize(context, fontSize: 15)
            : getResponsiveFontSize(context, fontSize: 20));
  }  
  
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
        color: AppColors.whiteColor,
        fontFamily: 'josefinsans',
        fontWeight: FontWeight.w300,
        fontSize: ScreenSize.screeenWidth(context) < 1200
            ? getResponsiveFontSize(context, fontSize: 14)
            : getResponsiveFontSize(context, fontSize: 16));
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
    return width / 350;
  } else if (width < 1200) {
    return width / 800;
  } else {
    return width / 1500;
  }
}
