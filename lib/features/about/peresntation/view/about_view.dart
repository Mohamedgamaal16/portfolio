import 'package:flutter/material.dart';
import 'package:portfolio/core/res/responsive.dart';
import 'package:portfolio/features/about/peresntation/view/widget/mobile/about_section_mobile.dart';
import 'package:portfolio/features/about/peresntation/view/widget/web/about_section_view_body_web.dart';

class AboutSectionView extends StatelessWidget {
  const AboutSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: SafeArea(child: AboutSectionViewBodyMobile()),
        tablet: SafeArea(child: AboutSectionViewBodyMobile()),
        web: AboutSectionViewBodyWeb());
  }
}
