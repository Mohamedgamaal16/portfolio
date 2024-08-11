class ServicesModel {
  final String name;
  final String icon;
  final String description;

  ServicesModel({
    required this.name,
    required this.icon,
    required this.description,
  });
}

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
