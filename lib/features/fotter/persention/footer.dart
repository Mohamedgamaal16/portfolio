import 'package:flutter/material.dart';
import 'package:portfolio/core/res/responsive.dart';
import 'package:portfolio/features/fotter/persention/mobile_footer/mobile_fotter.dart';
import 'package:portfolio/features/fotter/persention/webfooter/web_fotter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(mobile: MobileFooter(), tablet: MobileFooter(), web: WebFooter());
  }
}