import 'package:flutter/material.dart';
import 'package:portfolio/core/res/responsive.dart';
import 'package:portfolio/features/home/Peresention/view/widget/first_section/first_section_web.dart';
import 'package:portfolio/features/home/Peresention/view/widget/first_section/first_wection_mobile.dart';

class FirstSectionView extends StatelessWidget {
  const FirstSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: FirstSectionMobileView(),
        tablet: FirstSectionMobileView(),
        web: FirstSectionWebView());
  }
}
