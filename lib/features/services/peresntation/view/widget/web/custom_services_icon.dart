import 'package:flutter/material.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/functions/function.dart';

class CustomServicesIcon extends StatefulWidget {
  const CustomServicesIcon({super.key, required this.index});
    final int index;

  @override
  State<CustomServicesIcon> createState() => _CustomServicesIconState();
}

class _CustomServicesIconState extends State<CustomServicesIcon> {
      bool isHovered = false; // Moved to state class

  @override
  Widget build(BuildContext context) {

    return  Container(
            width: ScreenSize.screeenWidth(context) * 0.07,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.bgColor,
            ),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              transform: Matrix4.translationValues(0, isHovered ? -20 : 0, 0),
              child: InkWell(
                onHover: (value) {
                  setState(() {
                    isHovered = value; // Update state in the state class
                  });
                },
                onTap: () {
                  // Handle onTap action here
                },
                child: Image.asset(servicesUtils[widget.index].icon),
              ),
            ),
          );
  }
}