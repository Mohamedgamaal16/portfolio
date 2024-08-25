import 'package:flutter/material.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class CustomDetailesIcon extends StatelessWidget {
  const CustomDetailesIcon({
    super.key,
    required this.icon,
    required this.label,
  });
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: AppColors.whiteColor,
          weight: 2,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          label,
          style: AppStyles.styleRegular16(context)
              ,
        ),
      ],
    );
  }
}