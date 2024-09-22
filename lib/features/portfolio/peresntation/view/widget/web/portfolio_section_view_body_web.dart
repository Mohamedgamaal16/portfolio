import 'package:flutter/material.dart';
import 'package:portfolio/core/changes/img.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/features/portfolio/data/projects_model.dart';
import 'package:portfolio/features/portfolio/peresntation/view/widget/web/nav_var_work_button.dart';
import 'package:portfolio/features/portfolio/peresntation/view/widget/web/orange_container.dart';
import 'package:portfolio/features/portfolio/peresntation/view/widget/web/tab_bar_view_body.dart';

class PortfolioSectionViewBodyWeb extends StatefulWidget {
  const PortfolioSectionViewBodyWeb({super.key});

  @override
  _PortfolioSectionViewBodyWebState createState() =>
      _PortfolioSectionViewBodyWebState();
}

class _PortfolioSectionViewBodyWebState
    extends State<PortfolioSectionViewBodyWeb>
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
     Tab(child: NavBarWorkButton(label: all)),
     Tab(child: NavBarWorkButton(label: mobileApp)),
     Tab(child: NavBarWorkButton(label: websites)),
     Tab(child: NavBarWorkButton(label: uitoProduct)),
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
      height: screenHeight * 1,
      child: Stack(
        children: [
          OrangeContainerWeb(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
              tabs: tabs,
              tabController: _tabController),
          Positioned(
            bottom: 40,
            child: SizedBox(
              height: screenHeight * 0.6,
              width: screenWidth * 1,
              child: TabBarViewBodyWeb(
                  tabController: _tabController,
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  projectsList: projectsList),
            ),
          ),
          Positioned(
            top: 100,
            right: -150,
            child: Image.asset(
              "assets/imgs/vector.png",
              scale: 2.5,
              color: Colors.white24,
            ),
          ),
          Positioned(
            top: 30,
            left: -150,
            child: Image.asset(
              "assets/imgs/vector.png",
              scale: 2.5,
              color: Colors.white24,
            ),
          ),
        ],
      ),
    );
  }
}
