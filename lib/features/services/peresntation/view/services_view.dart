import 'package:flutter/material.dart';
import 'package:portfolio/core/res/responsive.dart';
import 'package:portfolio/features/services/peresntation/view/widget/mobile/service_section_mobile.dart';
import 'package:portfolio/features/services/peresntation/view/widget/web/services_section_view_body_web.dart';

class ServicesSectionView extends StatelessWidget {
  const ServicesSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: SafeArea(child: ServicesSectionViewBodyMobile()),
        tablet: SafeArea(child: ServicesSectionViewBodyMobile()),
        web: ServicesSectionViewBodyWeb());
  }
}
