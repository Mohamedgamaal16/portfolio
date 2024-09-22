import 'package:flutter/material.dart';

import 'package:portfolio/features/portfolio/data/projects_model.dart';
import 'package:portfolio/features/portfolio/peresntation/view/widget/web/works_image.dart';

class TabBarViewBodyMobile extends StatelessWidget {
  const TabBarViewBodyMobile({
    super.key,
    required this.tabController,
    required this.screenHeight,
    required this.screenWidth,
    required this.projectsList,
  });

  final TabController tabController;
  final dynamic screenHeight;
  final dynamic screenWidth;
  final List<ProjectsModel> projectsList;

  @override
  Widget build(BuildContext context) {
    return TabBarView(controller: tabController, children: [
      SizedBox(
        height: screenHeight * 0.6, // Ensure the height is set properly
        width: screenWidth * 1, // Ensure the width is set properly
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: projectsList.length, // Ensure the list is not empty
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0), // Add some padding if needed
              child: SizedBox(
                width: screenWidth * 0.8, // Set item width for proper spacing
                child: PortfolioImageWidget(
                  projectsModel: projectsList[index],
                ),
              ),
            );
          },
        ),
      ),
      SizedBox(
        height: screenHeight * 0.6, // Ensure the height is set properly
        width: screenWidth * 1, // Ensure the width is set properly
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:3, // Ensure the list is not empty
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0), // Add some padding if needed
              child: SizedBox(
                width: screenWidth * 0.8, // Set item width for proper spacing
                child: PortfolioImageWidget(
                  projectsModel: projectsList[index],
                ),
              ),
            );
          },
        ),
      ), SizedBox(
        height: screenHeight * 0.6, // Ensure the height is set properly
        width: screenWidth * 1, // Ensure the width is set properly
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 1, // Ensure the list is not empty
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0), // Add some padding if needed
              child: SizedBox(
                width: screenWidth * 0.8, // Set item width for proper spacing
                child: PortfolioImageWidget(
                  projectsModel: projectsList[3],
                ),
              ),
            );
          },
        ),
      ), SizedBox(
        height: screenHeight * 0.6, // Ensure the height is set properly
        width: screenWidth * 1, // Ensure the width is set properly
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 1, // Ensure the list is not empty
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0), // Add some padding if needed
              child: SizedBox(
                width: screenWidth * 0.8, // Set item width for proper spacing
                child: PortfolioImageWidget(
                  projectsModel: projectsList[2],
                ),
              ),
            );
          },
        ),
      ),
    ]);
  }
}
