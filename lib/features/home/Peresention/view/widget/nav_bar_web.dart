import 'package:flutter/material.dart';

import 'package:portfolio/core/utils/navbar_model.dart';
import 'package:portfolio/features/home/Peresention/view/widget/hover_button.dart';
import 'package:portfolio/features/home/Peresention/view/widget/nav_bar_logo.dart';
import 'package:portfolio/features/home/Peresention/view/widget/navbar_actions_button.dart';
import 'package:portfolio/features/home/Peresention/view_model/change_theme_cubit/change_theme_cubit.dart';

class NavbarWeb extends StatelessWidget {
  const NavbarWeb({super.key, required this.themeProvider});
  final ChangeThemeCubit themeProvider;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const NavBarLogo(),
          const Spacer(),
          ...NavBarModel.names.asMap().entries.map(
                (e) => NavBarActionButton(label: e.value, index: e.key),
              ),
          const Spacer(),
          const HoverButton(),
          const SizedBox(
            width: 15,
          ),
          IconButton(
            icon: Icon(
              themeProvider.themeMode == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
            iconSize: 30,
            onPressed: themeProvider.toggleTheme,
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
