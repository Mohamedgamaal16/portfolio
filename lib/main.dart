import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/config/connection/cubit/connected_cubit.dart';
import 'package:portfolio/core/providers/drawer_provider.dart';
import 'package:portfolio/core/providers/scroll_provider.dart';
import 'package:portfolio/features/home/Peresention/view/home_view.dart';
import 'package:portfolio/features/home/Peresention/view/widget/nav_bar.dart';
import 'package:portfolio/features/home/Peresention/view_model/change_theme_cubit/change_theme_cubit.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ChangeThemeCubit(),
        ),
        BlocProvider(
          create: (context) => ConnectedCubit(),
        ),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => DrawerProvider()),
          ChangeNotifierProvider(create: (_) => ScrollProvider()),
        ],
        child: const Portfolio(),
      ),
    ),
  );
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeThemeCubit, ChangeThemeState>(
      builder: (context, state) {
        final themeProvider = context.read<ChangeThemeCubit>();

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              brightness: Brightness.light,background: AppColors.bgColor
            ),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              brightness: Brightness.dark,
            ),
            useMaterial3: true,
          ),
          themeMode: themeProvider.themeMode,
          home: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(100),
                child: Navbar(
                  themeProvider: themeProvider,
                )),
            body: const HomeView(),
          ),
        );
      },
    );
  }
}
