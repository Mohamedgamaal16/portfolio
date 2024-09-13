import 'package:flutter/material.dart';
import 'package:portfolio/core/res/responsive.dart';
import 'package:portfolio/features/portfolio/peresntation/view/widget/mobile/portfolio_section_mobile.dart';
import 'package:portfolio/features/portfolio/peresntation/view/widget/web/portfolio_section_view_body_web.dart';

class PortfolioSectionView extends StatelessWidget {
  const PortfolioSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: SafeArea(child: PortfolioSectionViewBodyMobile()),
        tablet: SafeArea(child: PortfolioSectionViewBodyMobile()),
        web: PortfolioSectionViewBodyWeb());
  }
}
