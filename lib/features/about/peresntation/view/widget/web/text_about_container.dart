import 'package:flutter/material.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/home/Peresention/view/widget/first_section/custom_download_cv.dart';

class TextAboutContainer extends StatelessWidget {
  const TextAboutContainer({
    super.key,
    required this.width,
    required this.height,
  });
  final double width, height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.screeenWidth(context) * width,
      padding: const EdgeInsets.only(right: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            mySkill,
            style: AppStyles.styleRegular40(context).copyWith(
                fontWeight: FontWeight.bold, color: AppColors.primaryColor),
          ),
          const SizedBox(
            height: 10,
          ),
          SelectableText(didgitl, style: AppStyles.styleBold40(context)),
          const SizedBox(height: 20),
          SelectableText(aboutMiniDescription1, style: AppStyles.styleRegular14(context)),
          const SizedBox(height: 10),
          SelectableText(aboutMiniDescription2, style: AppStyles.styleRegular14(context)),
          const SizedBox(height: 20),
          CustomDownloadCv(
            height: height,
          ),
        ],
      ),
    );
  }
}
