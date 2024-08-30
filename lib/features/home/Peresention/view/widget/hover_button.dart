import 'package:flutter/material.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class HoverButton extends StatefulWidget {
  const HoverButton({super.key});

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      transform: Matrix4.translationValues(0, isHover ? -20 : 0, 0),
      child: Container(
        decoration: BoxDecoration(
          color: isHover ? AppColors.secondaryColor : AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: InkWell(
          onHover: (value) {
            setState(() => isHover = value);
          },
          onTap: () {},
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Contect",
              style: AppStyles.styleRegular16(context).copyWith(color: AppColors.whiteColor),
            ),
          ),
        ),
      ),
    );
  }
}
