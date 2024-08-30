import 'package:flutter/material.dart';
import 'package:portfolio/features/home/Peresention/view/widget/nav_bar_logo.dart';
import 'package:portfolio/features/home/Peresention/view_model/change_theme_cubit/change_theme_cubit.dart';

class NavBarTab extends StatelessWidget {
  const NavBarTab({super.key, required this.themeProvider});
  final ChangeThemeCubit themeProvider;

  @override
  Widget build(BuildContext context) {
    // final drawerProvider = Provider.of<DrawerProvider>(context);
    return Row(
      children: [
        const NavBarLogo(),
        const Spacer(),
        IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu)),
        IconButton(
          icon: Icon(
            themeProvider.themeMode == ThemeMode.light
                ? Icons.dark_mode
                : Icons.light_mode,
          ),
          iconSize: 30,
          onPressed: themeProvider.toggleTheme,
        ),
      ],
    );
  }
}
