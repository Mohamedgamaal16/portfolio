import 'package:flutter/material.dart';
import 'package:portfolio/core/providers/scroll_provider.dart';
import 'package:portfolio/features/about/peresntation/view/about_view.dart';
import 'package:portfolio/features/home/Peresention/view/first_section.dart';
import 'package:portfolio/features/home/Peresention/view_model/download_cv_provider.dart';
import 'package:portfolio/features/portfolio/peresntation/view/portfolio_view.dart';
import 'package:portfolio/features/services/peresntation/view/services_view.dart';
import 'package:provider/provider.dart';

class BodyUtils {
  static List<Widget> views(ScrollProvider scrollProvider) {
    return [
      ChangeNotifierProvider(
          create: (BuildContext context) {
            return DownloadMyCvProvider();
          },
          child: const FirstSectionView()),
      const ServicesSectionView(),
      ChangeNotifierProvider(
          create: (BuildContext context) {
            return DownloadMyCvProvider();
          },
          child: const AboutSectionView()),
      // const PortfolioSectionView(),
      Container(
        color: Colors.blue,
        height: 600,
      )
    ];
  }
}
