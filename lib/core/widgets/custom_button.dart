import 'package:flutter/material.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {super.key,
      this.color = AppColors.primaryColor,
      required this.labelName,
      this.textColor = Colors.white,
      this.onPressed,
      this.haveBorder = false,
      this.isBold = false,
      this.borderRadius = 15,
      this.height = 65,
      this.width = 70,
      this.fontSize = 18});

  final Color color, textColor;
  final String labelName;
  final void Function()? onPressed;
  final bool haveBorder, isBold;
  final double borderRadius, height, width, fontSize;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isHover = false; // Initialize isHover to false

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      transform: Matrix4.translationValues(0, isHover ? -10 : 0, 0),
      child: MouseRegion(
        onEnter: (_) => setState(() => isHover = true),
        onExit: (_) => setState(() => isHover = false),
        cursor: SystemMouseCursors.click,
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                side: widget.haveBorder
                    ? const BorderSide(
                        color: Colors.white) // Set border color to white
                    : BorderSide.none, // No border
              ),
              elevation: 0,
              backgroundColor:
                  isHover ? AppColors.secondaryColor : widget.color,
            ),
            onPressed: widget.onPressed,
            child: Text(
              widget.labelName,
              style: widget.isBold
                  ? AppStyles.styleBold40(context).copyWith(
                      color: widget.textColor, fontSize: widget.fontSize)
                  : AppStyles.styleRegular20(context).copyWith(
                      color: widget.textColor,
                      fontSize: widget.fontSize,
                      fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
