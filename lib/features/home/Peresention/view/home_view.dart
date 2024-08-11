import 'package:flutter/material.dart';
import 'package:portfolio/core/providers/drawer_provider.dart';
import 'package:portfolio/features/home/Peresention/view/widget/home_view_body.dart';
import 'package:portfolio/features/home/Peresention/view/widget/nav_bar.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final DrawerProvider drawerProvider = Provider.of<DrawerProvider>(context);
    return SafeArea(
      child: Scaffold(
       
        key: drawerProvider.key,
        body: const Stack(
          children: [
            HomeViewBody(),

          ],
        ),
      ),
    );
  }
}
