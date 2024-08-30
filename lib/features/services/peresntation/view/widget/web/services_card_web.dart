import 'package:flutter/material.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/core/utils/services_model.dart';
import 'package:portfolio/features/services/peresntation/view/widget/web/custom_services_icon.dart';

class ServicesViewCard extends StatefulWidget {
  const ServicesViewCard({super.key, required this.index, required this.titleFontSize, required this.descFontSize});
  final int index;
  final double titleFontSize ,descFontSize;

  @override
  State<ServicesViewCard> createState() => _ServicesViewCardState();
}

class _ServicesViewCardState extends State<ServicesViewCard> {
  bool isHovered = false; // Moved to state class

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12, // Deeper shadow color
            spreadRadius: 0, // Remove spread for a cleaner look
            blurRadius: 30, // Reduce blur for a more defined shadow
            offset: Offset(0, 1), // Adjust offset for better positioning
          )
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          CustomServicesIcon(index: widget.index),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  servicesUtils[widget.index].name,
                  style: AppStyles.styleRegular20(context).copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,fontSize: widget.titleFontSize),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(servicesUtils[widget.index].description,
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: AppColors.lightBlack,fontSize: widget.descFontSize)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
