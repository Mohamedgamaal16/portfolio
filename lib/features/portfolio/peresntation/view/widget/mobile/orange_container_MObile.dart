
import 'package:flutter/material.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class OrangeContainerMobile extends StatelessWidget {
  const OrangeContainerMobile({
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
            height: 10,
          ),
          Text(
            portfolio,
            style: AppStyles.styleRegular25(context)
                .copyWith(color: AppColors.whiteColor),
          ),
          const SizedBox(
            height: 2.5,
          ),
          Text(
            portfolioMiniDescription,
            style: AppStyles.styleRegular16(context).copyWith(
                color: AppColors.whiteColor, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 2.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: 25,
              child: TabBar(
                tabs: _tabs,
                controller: _tabController, // Use _tabController properly
                labelPadding: const EdgeInsets.all(0),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: AppColors.whiteColor,
                indicatorWeight: 2,
                dividerColor: AppColors.primaryColor,
                unselectedLabelColor: AppColors.blackColor,
                // labelColor: AppColors.whiteColor,
              ),
            ),
          ),
          const SizedBox(
            height: 2.5,
          ),
        ],
      ),
    );
  }
}
