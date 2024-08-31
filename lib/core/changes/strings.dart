import 'dart:ui';

import 'package:portfolio/core/utils/about_model.dart';
import 'package:portfolio/core/utils/services_model.dart';

String hellotag = '''Hi there, Welcome to My Space  ''';

String yourname = "I'm Mohamed Gamal,";

//
String contactHeadding = "Let’s try my service now!";
String contactSubHeadding =
    "Let’s work together and make everything super cute and super useful.";
//
String miniDescription =
    "Freelancer providing services for programming and design content needs. Join me down below and let's get started!";
String footerCopyright = "Developed by Mohmaed Gamal | Copyright Gemy © 2024.";
//contect
String contectAddress = "Mansoura - Egypt";
String contectEmail = "Mahooomar53@gmail.com";
String contectPhone = "+201050566622";
String downloadMyCv = "Download CV";
List<String> whatIDo = [
  "A Mobile Application Developer",
  "Also make Websites usnig flutter",
  "Change your UI/UX Design to real product"
];

// services
String services = "Services";

List<ServicesModel> servicesUtils = [
  ServicesModel(
    name: 'Ui/Ux Design',
    icon: 'assets/icons/service-icon1.png',
    description:
        "I'm creating elegant designs suited to your needs following core design theory. ",
  ),
  ServicesModel(
    name: 'Web Design',
    icon: 'assets/icons/service-icon2.png',
    description:
        "Are you interested in the great Web Design? Let's make it a reality.",
  ),
  ServicesModel(
    name: 'Web Development',
    icon: 'assets/icons/service-icon3.png',
    description:
        "Do you have an idea for your next great website? Let's make it a reality.",
  ),
  ServicesModel(
    name: 'App Development',
    icon: 'assets/icons/service-icon4.png',
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
  ),
];

// about
String about = "About me";
String mySkill = "My Skills";
String didgitl = "Beatiful and unique Digital Experiences";
String aboutMiniDescription1 =
    "Nostrum exercitationem ullam corporis suscipit laborioa nisi ut aliquid exrea commodi consequatur magni dolores aos qui ratione voluptatem nesciunt.";
String aboutMiniDescription2 =
    "Quia voluptas sit aspernatur aut odit aut fugit, sed ruiano consequntar magni dolores.";

List<AboutModel> aboutUtils = [
  AboutModel(
    name: 'Mobile Development',
    percent: 0.95,
    percentText: "95 %",
    color: const Color(0xFF6F34FE),
  ),
  AboutModel(
    name: 'Ui / UX',
    percent: 0.85,
    percentText: "85 %",
    color: const Color(0xFFFCA61F),
  ),
  AboutModel(
    name: 'App performance',
    percent: 0.85,
    percentText: "85 %",
    color: const Color(0xFF56CBBD),
  ),
  AboutModel(
    name: 'Web Development',
    percent: 0.8,
    percentText: "90 %",
    color: const Color(0xFF3F396D),
  ),
];
