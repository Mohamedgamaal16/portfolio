import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/features/home/Peresention/view/home_view.dart';
import 'package:portfolio/features/home/Peresention/view_model/change_theme_cubit/change_theme_cubit.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ChangeThemeCubit(),
      child: const Portfolio(),
    ),
  );
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = BlocProvider.of<ChangeThemeCubit>(context);
    return BlocBuilder<ChangeThemeCubit, ChangeThemeState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              brightness: Brightness.light, // Light mode color scheme
            ),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              brightness: Brightness.dark, // Dark mode color scheme
            ),
            useMaterial3: true,
          ),
          themeMode:themeProvider.themeMode , // Use the current theme mode
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Portfolio'),
              actions: [
                IconButton(
                  icon: Icon(
                    themeProvider.themeMode == ThemeMode.light
                        ? Icons.dark_mode
                        : Icons.light_mode,
                  ),
                  onPressed: () {
                    themeProvider.toggleTheme();
                  },
                ),
              ],
            ),
            body: const HomeView(),
          ),
        );
      },
    );
  }
}
