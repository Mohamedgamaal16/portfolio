import 'package:flutter/material.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/features/portfolio/data/projects_model.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioImageWidget extends StatefulWidget {
  final ProjectsModel projectsModel;

  const PortfolioImageWidget({
    Key? key, required this.projectsModel,
   
  }) : super(key: key);

  @override
  State<PortfolioImageWidget> createState() => _PortfolioImageWidgetState();
}

class _PortfolioImageWidgetState extends State<PortfolioImageWidget> {
  bool isHoverd = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHoverd = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHoverd = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          // Navigate or perform actions when the image is tapped.
        },
        child: Stack(
          children: [
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.black26,
                  hoverColor: Colors.black26,
                  borderRadius: BorderRadius.circular(10.0),
                  onTap: () {
                    isHoverd = true;

                    // Optionally handle a tap on the image itself
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        widget.projectsModel.name,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            isHoverd
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryColor,
                            elevation: 0,
                            padding: const EdgeInsets.all(20),
                          ),
                          onPressed: () {
                            // Open the source code link
                            _launchURL(widget.projectsModel.sourceCodeLink);
                          },
                          child: Text(
                            'Source Code',
                            style: AppStyles.styleRegular16(context)
                                .copyWith(color: AppColors.whiteColor),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(20),
                            backgroundColor: AppColors.primaryColor,
                            elevation: 0,
                          ),
                          onPressed: () {
                            // Open the video link
                            _launchURL(widget.projectsModel.videoLink);
                          },
                          child: Text(
                            'Video',
                            style: AppStyles.styleRegular16(context)
                                .copyWith(color: AppColors.whiteColor),
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }

  // Function to open URLs
  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
