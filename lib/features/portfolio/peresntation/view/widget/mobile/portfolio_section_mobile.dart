import 'package:flutter/material.dart';
import 'package:portfolio/core/changes/img.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/features/portfolio/data/projects_model.dart';
import 'package:portfolio/features/portfolio/peresntation/view/widget/mobile/orange_container_MObile.dart';
import 'package:portfolio/features/portfolio/peresntation/view/widget/mobile/tab_bar_body_mobile.dart';
import 'package:portfolio/features/portfolio/peresntation/view/widget/web/nav_var_work_button.dart';

class PortfolioSectionViewBodyMobile extends StatefulWidget {
  const PortfolioSectionViewBodyMobile({super.key});

  @override
  _PortfolioSectionViewBodyMobileState createState() =>
      _PortfolioSectionViewBodyMobileState();
}

class _PortfolioSectionViewBodyMobileState
    extends State<PortfolioSectionViewBodyMobile>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<ProjectsModel> projectsList = [
    ProjectsModel(
      name: fitness,
      sourceCodeLink:
          "https://github.com/Mohamedgamaal16/code_alpha_fitness_app",
      videoLink: "https://www.linkedin.com/in/mohamed-gamal-19070422b/",
    ),
    ProjectsModel(
      name: climbUp,
      sourceCodeLink: "https://github.com/Mohamedgamaal16/TEKNOSOFT",
      videoLink:
          "https://www.linkedin.com/posts/mohamed-gamal-19070422b_applaunch-techinnovation-localbrands-activity-7197744146751590400-qUcC?utm_source=share&utm_medium=member_desktop",
    ),
    ProjectsModel(
      name: laskNewsApp,
      sourceCodeLink: "https://github.com/Mohamedgamaal16/lask_news_app",
      videoLink: "https://www.linkedin.com/in/mohamed-gamal-19070422b/",
    ),
    ProjectsModel(
      name: quotes,
      sourceCodeLink: "https://github.com/Mohamedgamaal16/CodeAlpha_Quotes",
      videoLink:
          "https://www.linkedin.com/posts/mohamed-gamal-19070422b_internship-codealpha-webdevelopment-activity-7206689386069901312-thwO?utm_source=share&utm_medium=member_desktop",
    ),
    ProjectsModel(
      name: responsiveDashboard,
      sourceCodeLink: "https://github.com/Mohamedgamaal16/responsiveDashboard",
      videoLink: "https://www.linkedin.com/in/mohamed-gamal-19070422b/",
    ),
  ];

  final List<Tab> tabs = [
     Tab(child: FittedBox(child: NavBarWorkButton(label: all))),
     Tab(child: FittedBox(child: NavBarWorkButton(label: mobileApp))),
     Tab(child: FittedBox(child: NavBarWorkButton(label: websites))),
     Tab(child: FittedBox(child: NavBarWorkButton(label: uitoProduct))),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = ScreenSize.screeenWidth(context);
    final screenHeight = ScreenSize.screeenHeight(context);
    return SizedBox(
      width: screenWidth * 1,
      height: screenHeight * 0.8,
      child: Stack(
        children: [
          OrangeContainerMobile(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
              tabs: tabs,
              tabController: _tabController),
        
         Positioned(
            top: 50,
            right: -75,
            child: Image.asset(
              "assets/imgs/vector.png",
              scale: 3.5,
              color: Colors.white24,
            ),
          ),  Positioned(
            bottom: 80,
            child: SizedBox(
              height: screenHeight * 0.6,
              width: screenWidth * 1,
              child: TabBarViewBodyMobile(
                  tabController: _tabController,
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  projectsList: projectsList),
            ),
          ),
         
          Positioned(
            top: 15,
            left: -75,
            child: Image.asset(
              "assets/imgs/vector.png",
              scale: 3.5,
              color: Colors.white24,
            ),
          ),
        ],
      ),
    );
  }
}
