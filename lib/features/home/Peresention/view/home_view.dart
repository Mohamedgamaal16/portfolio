import 'package:flutter/material.dart';
import 'package:portfolio/features/home/Peresention/view/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // final DrawerProvider drawerProvider = Provider.of<DrawerProvider>(context);
    return const SafeArea(
      child: Scaffold(
        // key: drawerProvider.key,
        body: 
            HomeViewBody(),
         
      ),
    );
  }
}
