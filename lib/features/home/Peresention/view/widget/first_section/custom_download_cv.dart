
import 'package:flutter/material.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/home/Peresention/view_model/download_cv_provider.dart';
import 'package:provider/provider.dart';

class CustomDownloadCv extends StatefulWidget {
  const CustomDownloadCv({super.key, required this.height});
  final double height;

  @override
  State<CustomDownloadCv> createState() => _CustomDownloadCvState();
}

class _CustomDownloadCvState extends State<CustomDownloadCv> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final downloadMyCvProvider = context.read<DownloadMyCvProvider>();
    final screenWidth = ScreenSize.screeenWidth(context);
    final screenHeight = ScreenSize.screeenHeight(context);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      transform: Matrix4.translationValues(0, isHover ? -20 : 0, 0),
      child: InkWell(
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        onTap: () async {
          downloadMyCvProvider.downloadCv();
        },
        child: Container(
          height: screenHeight * 0.07,
          width: screenWidth * widget.height,
          decoration: BoxDecoration(
            color: isHover ? AppColors.secondaryColor : AppColors.primaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              downloadMyCv,
              style: AppStyles.styleRegular20(context).copyWith(
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
