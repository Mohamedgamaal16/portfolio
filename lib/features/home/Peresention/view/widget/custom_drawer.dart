import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/core/utils/navbar_model.dart';
import 'package:portfolio/features/home/Peresention/view/widget/custom_mobile_detailes_icon.dart';
import 'package:portfolio/features/home/Peresention/view/widget/navbar_actions_button.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height:50),
          SizedBox(
            width: ScreenSize.screeenWidth(context) * 0.2,
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 40),
          ...NavBarModel.names.asMap().entries.map(
                (e) => NavBarActionButton(label: e.value, index: e.key),
              ),
          const Spacer(),
          ScreenSize.screeenHeight(context) > 500
              ? Container(
                  color: AppColors.primaryColor,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 28),
                        CustomDetailesIcon(
                          icon: FontAwesomeIcons.envelope,
                          label: "Mahooomar53@gmail.com",
                        ),
                        SizedBox(height: 10),
                        CustomDetailesIcon(
                          icon: Icons.phone_enabled_outlined,
                          label: "+0201050566622",
                        ),
                        SizedBox(height: 28),
                      ],
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
