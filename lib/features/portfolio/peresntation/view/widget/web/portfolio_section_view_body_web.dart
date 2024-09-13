import 'package:flutter/material.dart';
import 'package:portfolio/core/changes/img.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/portfolio/data/projects_model.dart';
import 'package:portfolio/features/portfolio/peresntation/view/widget/web/nav_var_work_button.dart';
import 'package:portfolio/features/portfolio/peresntation/view/widget/web/works_image.dart';

class PortfolioSectionViewBodyWeb extends StatefulWidget {
  const PortfolioSectionViewBodyWeb({super.key});

  @override
  State<PortfolioSectionViewBodyWeb> createState() =>
      _PortfolioSectionViewBodyWebState();
}

class _PortfolioSectionViewBodyWebState
    extends State<PortfolioSectionViewBodyWeb> with TickerProviderStateMixin {
  late TabController _tabController;
  final _tabs = [
    const Tab(
      child: NavBarWorkButton(label: "All"),
    ),
    const Tab(
      child: NavBarWorkButton(label: "Mobile App"),
    ),
    const Tab(
      child: NavBarWorkButton(label: "Websites"),
    ),
    const Tab(
      child: NavBarWorkButton(label: "UI to Product"),
    ),
  ];

  List<ProjectsModel> projectsList = [
    ProjectsModel(
      name: fitness,
      sourceCodeLink:
          "https://github.com/your_repo/fitness_app", // Replace with your actual source code URL
      videoLink:
          "https://www.youtube.com/watch?v=fitness_video", // Replace with your actual video URL
    ),
    ProjectsModel(
      name: climbUp,
      sourceCodeLink:
          "https://github.com/your_repo/climb_up_app", // Replace with your actual source code URL
      videoLink:
          "https://www.youtube.com/watch?v=climb_up_video", // Replace with your actual video URL
    ),
    ProjectsModel(
      name: quotes,
      sourceCodeLink:
          "https://github.com/your_repo/quotes_app", // Replace with your actual source code URL
      videoLink:
          "https://www.youtube.com/watch?v=quotes_video", // Replace with your actual video URL
    ),
    ProjectsModel(
      name: responsiveDashboard,
      sourceCodeLink:
          "https://github.com/your_repo/responsive_dashboard", // Replace with your actual source code URL
      videoLink:
          "https://www.youtube.com/watch?v=dashboard_video", // Replace with your actual video URL
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = ScreenSize.screeenWidth(context); // Corrected typo
    final screenHeight = ScreenSize.screeenHeight(context); // Corrected typo
    return SizedBox(
      width: screenWidth * 1,
      height: screenHeight * 1,
      child: Stack(
        children: [
          Container(
            color: AppColors.primaryColor,
            height: screenHeight * 0.5,
            width: screenWidth * 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  portfolio,
                  style: AppStyles.styleRegular40(context)
                      .copyWith(color: AppColors.whiteColor),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  portfolioMiniDescription,
                  style: AppStyles.styleRegular30(context).copyWith(
                      color: AppColors.whiteColor, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: SizedBox(
                    height: 50,
                    child: TabBar(
                      tabs: _tabs,
                      controller: _tabController, // Use _tabController properly
                      labelPadding: const EdgeInsets.all(0),
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: AppColors.whiteColor,
                      indicatorWeight: 4,
                      dividerColor: AppColors.primaryColor,
                      unselectedLabelColor: AppColors.blackColor,
                      // labelColor: AppColors.whiteColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            child: SizedBox(
              height: screenHeight * 0.6,
              width: screenWidth * 0.5,
              child: TabBarView(controller: _tabController, children: [
                ListView.builder(
                  itemCount: projectsList.length,
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return PortfolioImageWidget(
                      projectsModel: projectsList[index],
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return PortfolioImageWidget(
                      projectsModel: projectsList[index],
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return PortfolioImageWidget(
                      projectsModel: projectsList[3],
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return PortfolioImageWidget(
                      projectsModel: projectsList[2],
                    );
                  },
                ),
              ]),
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
