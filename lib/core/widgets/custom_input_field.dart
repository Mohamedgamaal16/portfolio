import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class CustomInputField extends StatefulWidget {
  const CustomInputField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.suffixIcon = false,
    this.isDense,
    this.obscureText = false,
    this.controller,
    this.minLines = 1,
    this.maxLines = 1,
    this.showLabel = true,
    this.backgroundColor =const Color.fromARGB(255, 230, 228, 228) ,
    this.height,
    this.isScrollable = false,
    this.hintColor,
    this.labelColor,
    this.labelDisplay = true,
    this.isReq = false, this.fontSize=16,
  });

  final String labelText, hintText;
  final bool suffixIcon,
      obscureText,
      showLabel,
      isScrollable,
      labelDisplay,
      isReq;
  final bool? isDense;
  final TextEditingController? controller;
  final int minLines, maxLines;
  final Color backgroundColor;
  final double? height, fontSize;
  final Color? hintColor;
  final Color? labelColor;

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: widget.height,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: widget.backgroundColor,
      ),
      child: TextFormField(
        minLines: widget.minLines,
        maxLines: widget.isScrollable ? widget.maxLines : null,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: widget.isReq
            ? (textValue) {
                if (textValue == null || textValue.isEmpty) {
                  return 'is required';
                } else {
                  return null;
                }
              }
            : null,
        obscureText: (widget.obscureText && _obscureText),
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          fillColor: widget.backgroundColor,
          filled: true,
          isDense: (widget.isDense != null) ? widget.isDense : false,
          suffixIcon: widget.suffixIcon
              ? IconButton(
                  icon: Icon(
                    _obscureText
                        ? Icons.remove_red_eye
                        : Icons.visibility_off_outlined,
                    color: Colors.black54,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
          suffixIconConstraints: (widget.isDense != null)
              ? const BoxConstraints(maxHeight: 33)
              : null,
          hintText: widget.hintText,
          hintStyle: AppStyles.styleRegular16(context)
              .copyWith(color: widget.hintColor, fontSize: widget.fontSize),
          label: widget.labelDisplay
              ? Text(
                  widget.labelText,
                  style: AppStyles.styleRegular16(context).copyWith(
                    fontSize: widget.fontSize,
                    color: widget.labelColor,
                  ),
                )
              : null,
        ),
        controller: widget.controller,
      ),
    );
  }
}
