import 'package:flutter/material.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/core/res/responsive.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // theme

    return SizedBox(
      width: Responsive.isWeb(context) ? ScreenSize.screeenWidth(context)*0.075  : ScreenSize.screeenWidth(context)*0.1,
      child: Image.asset('assets/images/logo.png',fit: BoxFit.fill,),
    );
  }
}
