import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/config/connection/cubit/connected_cubit.dart';
import 'package:portfolio/core/providers/loading_provider.dart';
import 'package:portfolio/core/providers/scroll_provider.dart';
import 'package:portfolio/features/home/Peresention/view_model/change_theme_cubit/change_theme_cubit.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/loading_view.dart';
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
          ChangeNotifierProvider(create: (_) => ScrollProvider()),
          ChangeNotifierProvider(
              create: (_) => LoadingProvider()), // Add LoadingProvider
        ],
        child: const PortfolioApp(),
      ),
    ),
  );
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LoadingProvider>(
        builder: (context, loadingProvider, child) {
          if (loadingProvider.isLoading) {
            // Show loading page
            return const LoadingPage();
          } else {
            // Show main content after loading
            return const Portfolio();
          }
        },
      );
    
  }
}

// class LoadingPage extends StatelessWidget {
//   const LoadingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Initiate loading on first build
//     context.read<LoadingProvider>().loadContent();
//     final spinkit = SpinKitWaveSpinner(
//       color: Colors.white,
//       size: 50.0,
//       controller: AnimationController(
//           vsync: this, duration: const Duration(seconds: 3)),
//     ); // Show a loading spinner
//     return Scaffold(
//       body: Center(
//           child: Column(children: [
//         Image.asset("assets/images/logo.png"),
//         const SizedBox(height: 20),
//         spinkit
//       ])),
//     );
//   }
// }
