
import 'package:flutter/material.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class OrangeContainerWeb extends StatelessWidget {
  const OrangeContainerWeb({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required List<Tab> tabs,
    required TabController tabController,
  }) : _tabs = tabs, _tabController = tabController;

  final dynamic screenHeight;
  final dynamic screenWidth;
  final List<Tab> _tabs;
  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
