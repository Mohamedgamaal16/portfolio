import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/changes/strings.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:portfolio/core/functions/function.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/core/widgets/custom_button.dart';
import 'package:portfolio/core/widgets/custom_input_field.dart';
import 'package:portfolio/features/fotter/persention/social_media_row.dart';
import 'package:portfolio/features/fotter/view_model/send_mail.dart';
import 'package:provider/provider.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final mailCvProvider = context.read<MailProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: ScreenSize.screeenWidth(context) * 0.35,
          height: ScreenSize.screeenWidth(context) * 0.35,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/logo.png",
                  ),
                  fit: BoxFit.fill)),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58.0),
          child: CustomInputField(
            fontSize: 12,
            controller: mailCvProvider.emailController,
            labelText: "Email Address",
            hintText: "write your Email Address",
            minLines: 1,
            labelDisplay: false,
            isReq: true,
            height: ScreenSize.screeenHeight(context) * 0.08,
            hintColor: AppColors.textColor,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58.0),
          child: CustomInputField(
            fontSize: 12,
            height: ScreenSize.screeenHeight(context) * 0.15,
            labelText: "Message",
            hintText: "Message",
            controller: mailCvProvider.messageController,
            isReq: false,
            isScrollable: true,
            maxLines: 3,
            labelDisplay: false,
            hintColor: AppColors.textColor,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58.0),
          child: CustomButton(
            width: ScreenSize.screeenWidth(context) * 1,
            height: ScreenSize.screeenHeight(context) * 0.07,
            labelName: "send",
            fontSize: 16,
            isBold: true,
            onPressed: () {
              mailCvProvider.sendMail();
            },
          ),
        ),  if (mailCvProvider.isLoading)
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
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                        ),
                      ),
                    ),
        const SizedBox(
          height: 15,
        ),
        SelectableText(
          aboutMiniDescription1,
          style: AppStyles.styleRegular14(context),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.phone_enabled_outlined,
              weight: 2,
            ),
            const SizedBox(
              width: 8,
            ),
            SelectableText(
              "+0201020304050",
              style: AppStyles.styleRegular14(context),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.phone_enabled_outlined,
              weight: 2,
            ),
            const SizedBox(
              width: 8,
            ),
            SelectableText(
              "+0233445566",
              style: AppStyles.styleRegular14(context),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.envelope,
              weight: 2,
            ),
            const SizedBox(
              width: 8,
            ),
            SelectableText(
              "mahooomar53@gmail.com",
              style: AppStyles.styleRegular14(context),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const SocialMediaRow(),
        const SizedBox(
          height: 15,
        ),
        SelectableText(
          "© all copy rights are reserved and created to Gemy Technology ",
          style: AppStyles.styleRegular14(context),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
