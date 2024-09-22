import 'package:flutter/material.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class AboutViewCard extends StatefulWidget {
  const AboutViewCard(
      {super.key,
      required this.index,
      required this.titleFontSize,
      required this.descFontSize});
  final int index;
  final double titleFontSize, descFontSize;

  @override
  State<AboutViewCard> createState() => _AboutViewCard();
}

class _AboutViewCard extends State<AboutViewCard> {
  bool isHovered = false; // Moved to state class

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
        transformAlignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        transform: Matrix4.diagonal3Values(
            isHovered ? 1.1 : 1.0, isHovered ? 1.1 : 1.0, 1),
        decoration: BoxDecoration(
            border:
                isHovered ? Border.all(color: AppColors.primaryColor) : null,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12, // Deeper shadow color
                spreadRadius: 0, // Remove spread for a cleaner look
                blurRadius: 30, // Reduce blur for a more defined shadow
                offset: Offset(0, 1), // Adjust offset for better positioning
              )
            ],
            borderRadius: BorderRadius.circular(30),
            color: AppColors.whiteColor),
        height: ScreenSize.screeenWidth(context) < 900 ? ScreenSize.screeenHeight(context) * 0.25:ScreenSize.screeenHeight(context) * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              animation: true,
              radius: ScreenSize.screeenWidth(context) < 900 ? 40 : 60,
              lineWidth: 5,
              animationDuration: 5000,
              percent: aboutUtils[widget.index - 1].percent,
              backgroundColor: AppColors.bgColor,
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: aboutUtils[widget.index - 1].color,
              center: Center(
                child: SelectableText(
                  aboutUtils[widget.index - 1].percentText,
                  style: AppStyles.styleRegular20(context).copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: widget.titleFontSize,
                      color: aboutUtils[widget.index - 1].color),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SelectableText(
                aboutUtils[widget.index - 1].name,
                style: AppStyles.styleRegular20(context).copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: widget.descFontSize,
                    color: aboutUtils[widget.index - 1].color),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
