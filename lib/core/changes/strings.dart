import 'dart:ui';
import 'package:portfolio/features/about/data/about_model.dart';
import 'package:portfolio/features/services/data/services_model.dart';

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
    description: "I'm developing your elegant designs to a real product. ",
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
  ServicesModel(
    name: 'App performance',
    icon: 'assets/icons/service-icon2.png',
    description:
        "improving performance for a seamless user experience.",
  ),
];

// about
String about = "About me";
String mySkill = "My Skills";
String didgitl = "Beatiful and unique mobile apps and websites";
String aboutMiniDescription1 =
    "I am a Flutter Developer with a passion for creating responsive and adaptive mobile and web applications. My experience spans various projects where I have integrated APIs, managed state with Bloc and Cubit, and optimized performance for a seamless user experience.";
String aboutMiniDescription2 =
    "With a strong foundation in software engineering and a focus on delivering high-quality code, I strive to bring innovative solutions to life. Let's work together to turn your ideas into reality!";

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


// portfolio
String portfolio = "Creative Works";
String portfolioMiniDescription ="Check out my latest projects";