import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/providers/loading_provider.dart';
import 'package:provider/provider.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Initiate the loading process when the widget is first created
    context.read<LoadingProvider>().loadContent();

    const spinkit = SpinKitWaveSpinner(
      color: AppColors.primaryColor,
      trackColor: AppColors.whiteColor,
      waveColor: AppColors.primaryColor,
      size: 80.0,
      duration: Duration(seconds: 4),
    ); // Show a loading spinner

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: 200,
              ), // Display logo
              const SizedBox(height: 20),
              spinkit, // Display spinner animation
            ],
          ),
        ),
      ),
    );
  }
}
