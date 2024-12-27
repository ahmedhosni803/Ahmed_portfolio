import 'package:portfolio/core/entities/project_data.dart';
import 'package:portfolio/gen/assets.gen.dart';
import '../entities/skill_data.dart';


class AppConstants {
  static const String appName = 'Ahmed Portfolio';
  static const String appVersion = '1.0.0';
  static const String cv =
      'https://raw.githubusercontent.com/ahmedhosni803/my-cv/main/Ahmed Hussineny Hussein.pdf';

  static List<SkillData> skills = [
    SkillData(imagePath: Assets.icons.flutter.path, title: 'Flutter'),
    SkillData(imagePath: Assets.icons.dart.path, title: 'Dart'),
    SkillData(imagePath: Assets.icons.java.path, title: 'Java'),
    // SkillData(
    //   imagePath: Assets.icons.icons8Typescript50.path,
    //   title: 'TypeScript',
    // ),
    // SkillData(imagePath: Assets.icons.icons8Nestjs48.path, title: 'Nest Js'),
    // SkillData(imagePath: Assets.icons.icons8Python48.path, title: 'Python'),
    // SkillData(imagePath: Assets.icons.icons8Sql48.path, title: 'SQL'),
    SkillData(imagePath: Assets.icons.icons8Linux48.path, title: 'Linux'),
    // SkillData(imagePath: Assets.icons.cPlusPlus50.path, title: 'C++'),
    SkillData(imagePath: Assets.icons.icons8Git48.path, title: 'Git'),
  ];

  static List<ProjectData> projects = [
    // ProjectData(
    //   imagePath: Assets.images.dushka.path,
    //   title: "Dushka Burger",
    //   appStoreLink: "https://apps.apple.com/eg/app/dushka-burger/id6692616449",
    //   videoLink: "assets/videos/dushka.mp4",
    //   googlePlayLink:
    //       "https://play.google.com/store/apps/details?id=com.dushka.dushka_burger",
    //   description:
    //       "An e-commerce app designed for ordering delicious burgers and meals on the go. The app provides a smooth and intuitive interface to browse the full menu, customize orders, whether you are dining in or taking out, Dushka Burger ensures a seamless and efficient experienc",
    //   tools: [
    //     "Flutter",
    //     "Dart",
    //     "Firebase",
    //     "Apis",
    //     "Clean Architecture",
    //     "Cubit",
    //     "Provider",
    //   ],
    // ),
    ProjectData(
      imagePath: Assets.images.cailery.path,
      title: "Caliery",
      videoLink: "assets/videos/caliery.mp4",
      description:
          "Designed and developed an application tailored for displaying digital menus. The app provides a seamless and user-friendly interface for browsing menu items, viewing detailed descriptions, and enhancing the customer experience. Utilized Flutter to ensure a smooth and responsive performance across various devices, with features including item categorization, dynamic pricing, and intuitive navigation to streamline operations and improve customer engagement",
      tools: [
        "Flutter",
        "Social Auth ",
        "Apis",
        "Clean Architecture",
        "Cubit",
        "Maps",
        "Location",
        "Notifications",
      ],
    ),
    // ProjectData(
    //   imagePath: Assets.images.growGreen.path,
    //   title: "Evergreenia",
    //   appStoreLink: "https://apps.apple.com/eg/app/evergreenia/id6714454099",
    //   googlePlayLink:
    //       "https://play.google.com/store/apps/details?id=com.grow.green.app",
    //   videoLink: "assets/videos/ever.mp4",
    //   description:
    //       "A user-friendly mobile application designed to support plant enthusiasts by offering a seamless e-commerce experience for buying plants, gardening tools, and accessories. The app features a personalized chatbot assistant to enhance user engagement and provides real-time information on plants",
    //   tools: [
    //     "Flutter",
    //     "Dart",
    //     "Apis",
    //     "Clean Architecture",
    //     "Cubit",
    //     "Maps",
    //     "Location",
    //     "Gemini Chat Bot",
    //     "3D Models"
    //   ],
    // ),
  ];
}
