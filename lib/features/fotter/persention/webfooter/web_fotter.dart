import 'package:flutter/material.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/core/widgets/custom_button.dart';
import 'package:portfolio/core/widgets/custom_input_field.dart';
import 'package:portfolio/features/fotter/persention/social_media_row.dart';
import 'package:portfolio/features/fotter/view_model/send_mail.dart';
import 'package:provider/provider.dart';
class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final mailCvProvider = context.watch<MailProvider>();

    return SizedBox(
      width: ScreenSize.screeenWidth(context) * 1,
      height: ScreenSize.screeenHeight(context) * 0.7,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: ScreenSize.screeenWidth(context) * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  SelectableText(
                    aboutMiniDescription1,
                    style: AppStyles.styleRegular16(context),
                  ),
                  // Contact information rows here...
                  const SizedBox(height: 17),
                  const Flexible(child: SocialMediaRow()),
                  const Spacer(),
                  SelectableText(
                    "© all copy rights are reserved and created to ASB.AI Technology",
                    style: AppStyles.styleRegular16(context),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: ScreenSize.screeenWidth(context) * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: ScreenSize.screeenWidth(context) * 0.13,
                    height: ScreenSize.screeenWidth(context) * 0.13,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  CustomInputField(
                    controller: mailCvProvider.emailController,
                    labelText: "Email Address",
                    hintText: "Enter your Email Address",
                    minLines: 1,
                    labelDisplay: false,
                    isReq: true,
                    height: ScreenSize.screeenHeight(context) * 0.08,
                    hintColor: AppColors.textColor,
                  ),
                  const SizedBox(height: 15),
                  CustomInputField(
                    controller: mailCvProvider.messageController,
                    height: ScreenSize.screeenHeight(context) * 0.15,
                    labelText: "Message",
                    hintText: "Message",
                    isReq: false,
                    isScrollable: true,
                    maxLines: 3,
                    labelDisplay: false,
                    hintColor: AppColors.textColor,
                  ),
                  const SizedBox(height: 15),
                  if (mailCvProvider.isLoading)
                    const CircularProgressIndicator()
                  else
                    CustomButton(
                      width: ScreenSize.screeenWidth(context) * 0.3,
                      height: ScreenSize.screeenHeight(context) * 0.07,
                      labelName: "Send",
                      isBold: true,
                      onPressed: mailCvProvider.sendMail,
                    ),
                  if (mailCvProvider.errorMessage != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        mailCvProvider.errorMessage!,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
