import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/functions/scroll_behav.dart';
import 'package:portfolio/core/res/responsive.dart';
import 'package:portfolio/features/home/Peresention/view/home_view.dart';
import 'package:portfolio/features/home/Peresention/view/widget/arrow_on_top.dart';
import 'package:portfolio/features/home/Peresention/view/widget/custom_drawer.dart';
import 'package:portfolio/features/home/Peresention/view/widget/nav_bar_web.dart';
import 'package:portfolio/features/home/Peresention/view/widget/nav_var_tab.dart';
import 'package:portfolio/features/home/Peresention/view_model/change_theme_cubit/change_theme_cubit.dart';
import 'package:provider/provider.dart';
class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeThemeCubit, ChangeThemeState>(
      builder: (context, state) {
        final themeProvider = context.read<ChangeThemeCubit>();

        return MaterialApp(
          scrollBehavior: MyCustomScrollBehavior(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepPurple,
                brightness: Brightness.light,
                background: AppColors.whiteColor),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            // textTheme: const TextTheme(
            //   bodyLarge: TextStyle(color: Colors.white),
            // ),
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepPurple,
                brightness: Brightness.dark,
                background: AppColors.blackColor),
            useMaterial3: true,
          ),
          themeMode: themeProvider.themeMode,
          home: Scaffold(
            drawer: const CustomDrawer(),
            extendBodyBehindAppBar: true,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(100),
              child: Responsive(
                mobile: SafeArea(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: NavBarTab(themeProvider: themeProvider),
                )),
                tablet: SafeArea(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: NavBarTab(themeProvider: themeProvider),
                )),
                web: NavbarWeb(themeProvider: themeProvider),
              ),
            ),
            body: const Stack(
              children: [
                HomeView(),
                ArrowOnTop(),
              ],
            ),
          ),
        );
      },
    );
  }
}


