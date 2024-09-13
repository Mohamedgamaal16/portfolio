import 'package:flutter/material.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class NavBarWorkButton extends StatefulWidget {
  final String label;

  const NavBarWorkButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  State<NavBarWorkButton> createState() => _NavBarWorkButtonState();
}

class _NavBarWorkButtonState extends State<NavBarWorkButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Text(
      widget.label,
      style: AppStyles.styleRegular20(context).copyWith(color: AppColors.whiteColor)
    );
  }
}

class NavBarWorkMobileButton extends StatefulWidget {
  final String label;

  const NavBarWorkMobileButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  State<NavBarWorkMobileButton> createState() => _NavBarWorkMobileButtonState();
}

class _NavBarWorkMobileButtonState extends State<NavBarWorkMobileButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Text(
      widget.label,
      style: TextStyle(
        color: isHover ? Colors.orange : Colors.white,
        fontFamily: 'josefinsans',
        fontWeight: FontWeight.w600,
        fontSize: 12,
      ),
    );
  }
}
