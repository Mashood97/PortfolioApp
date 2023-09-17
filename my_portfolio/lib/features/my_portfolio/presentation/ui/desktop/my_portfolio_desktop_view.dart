import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/features/my_portfolio/model/app_model.dart';
import 'package:my_portfolio/features/my_portfolio/presentation/widgets/get_app_list.dart';
import 'package:my_portfolio/utils/constant/ui_constant.dart';
import 'package:my_portfolio/utils/responsive/app_responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPortfolioDesktopView extends StatelessWidget {
  MyPortfolioDesktopView({Key? key}) : super(key: key);

  final List<AppModel> _healthAppList = [
    AppModel(
      appTitle: "Pillway- A Modern Pharmacy",
      appIcon: AppAssets.pillwayIcon,
      appDescription:
          "Pillway is your modern full-service pharmacy at your fingertips. Easily order and keep track of all medications for you and your family and have them delivered to your home for free! Pillway helps to simplify your medication management process and allows you to stay connected with our pharmacy in real-time.",
      appLinksWidget: [
        AppLinkModel(
            appIcon: AppAssets.androidAppIcon,
            appLink:
                "https://play.google.com/store/apps/details?id=app.invision.simpill1&hl=en"),
        AppLinkModel(
            appIcon: AppAssets.iosAppIcon,
            appLink: "https://apps.apple.com/ca/app/pillway/id1299628311"),
      ],
    ),
    AppModel(
      appTitle: "Lumino Health Pharmacy",
      appIcon: AppAssets.luminoPharmacyIcon,
      appDescription:
          "Get quick and easy access to medications, pharmacists, and free delivery. Built for life today, Lumino Health Pharmacy helps you manage your health with confidence. Cross an errand off your to-do list with pharmacy services a click away. Get quick and easy access to medications, pharmacists, and free delivery. There are no extra costs. Have prescriptions elsewhere? We can help you easily switch from your in-person pharmacy to this online pharmacy. Sun Life presents Lumino Health™ Pharmacy: an online pharmacy provided by Pillway. Helping Canadians manage their health with confidence. Not available to Quebec residents at this time.",
      appLinksWidget: [
        AppLinkModel(
            appIcon: AppAssets.androidAppIcon,
            appLink:
                "https://play.google.com/store/apps/details?id=com.sl.lumino&hl=en_US"),
        AppLinkModel(
            appIcon: AppAssets.iosAppIcon,
            appLink:
                "https://apps.apple.com/ca/app/lumino-health-pharmacy/id6449428514"),
        AppLinkModel(
            appIcon: AppAssets.websiteAppIcon,
            appLink: "https://luminopharmacy.pillway.com/"),
      ],
    ),
  ];
  final List<AppModel> _realigiousAppList = [
    AppModel(
      appTitle: "Shia Tool Kit",
      appIcon: AppAssets.siatAppIcon,
      appDescription:
          "Shia Tool KitShia Tool Kit May 2021 - PresentMay 2021 - Present Associated with Invision Custom Solutions Inc.Associated with Invision Custom Solutions Inc. Your spiritual companion for everyday use This is the official Shia Toolkit (SIAT) app. This app is currently a compilation of following modules: - Holy Quran with English & Urdu Translation - Hajj and Ziarat Guides - Monthly Amaal (Muharram, Rajab, Shaban, Ramadhan, Dhul Hijjah) - Dua Directory - Sahifa Sajjadia - Ziaraat Directory - Daily Taqibaat e Namaz (Salaat) - Salaah Directory - Tasbeeh Counter - eBook Library (850+ books in ePub, Mobi & PDF) - Salaat timings and Azan reminder - Important Dates - Imam & Masoomeen (as) Info - Nahjul Balagha in English and Urdu - Specific purpose Duas - Hadith Directory - Islamic Calendar and important events - Qibla Compass and many other features.",
      appLinksWidget: [
        AppLinkModel(
            appIcon: AppAssets.androidAppIcon,
            appLink:
                "https://play.google.com/store/apps/details?id=anywheresoftware.b4a.SIAToolKit&hl=en"),
        AppLinkModel(
            appIcon: AppAssets.iosAppIcon,
            appLink:
                "https://apps.apple.com/us/app/shia-ithna-asheri-toolkit/id702458202"),
      ],
    ),
  ];
  final List<AppModel> _publicServiceAndAmentiesAppList = [
    AppModel(
      appTitle: "Karachi Gym Khana Application",
      appIcon: AppAssets.kgAppIcon,
      appDescription:
          "Karachi Gymkhana was founded in 1886 exclusively for its members. It offers a variety of facilities and services to its members daily from 6. A.M. to midnight. It never closes even on festivals/ Gazetted holidays rather colorful programs are arranged on such occasions. The club enrolled over 9000 members along with their families, the membership in effect comes to around 45,000 plus. Karachi Gymkhana is specifically rated as one of the largest club in Asia in view of its membership and sports facilities. The multiple facilities like Tennis, Badminton, Squash, Cricket, and other sports, a Swimming pool, Sauna bath, T.V Room, Jogging Track, Car Parking, Catering, and Library.",
      appLinksWidget: [
        AppLinkModel(
            appIcon: AppAssets.androidAppIcon,
            appLink:
                "https://play.google.com/store/apps/details?id=app.rapidosolutions.karachigymkhana&hl=en"),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    SizeConfig().init(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 5,
            ),
            Text(
              "My Portfolio",
              // textAlign: TextAlign.start,
              style: _theme.textTheme.headlineLarge?.copyWith(
                fontSize: SizeConfig.safeBlockHorizontal! * 3,
                fontWeight: FontWeight.w900,
                color: Colors.amber,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 2,
            ),
            Text(
              "These are some of my projects which I've worked and lead the team during my professional career at different companies.",
              // textAlign: TextAlign.start,
              style: _theme.textTheme.headlineSmall?.copyWith(
                fontSize: SizeConfig.safeBlockHorizontal! * 1,
                fontWeight: FontWeight.w500,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 2,
            ),
            Text(
              "These all apps are made by using Flutter",
              // textAlign: TextAlign.start,
              style: _theme.textTheme.headlineSmall?.copyWith(
                fontSize: SizeConfig.safeBlockHorizontal! * 1,
                fontWeight: FontWeight.w700,
                color: Colors.amber,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 2,
            ),
            Text(
              "Health Applications",
              style: _theme.textTheme.headlineLarge?.copyWith(
                fontSize: SizeConfig.safeBlockHorizontal! * 2,
                fontWeight: FontWeight.w700,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 1,
            ),
            GetAppList(healthAppList: _healthAppList, theme: _theme),

            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 2,
            ),
            Text(
              "Religious Applications",
              style: _theme.textTheme.headlineLarge?.copyWith(
                fontSize: SizeConfig.safeBlockHorizontal! * 2,
                fontWeight: FontWeight.w900,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 1,
            ),
            GetAppList(healthAppList: _realigiousAppList, theme: _theme),
            // SizedBox(
            //   height: SizeConfig.blockSizeHorizontal! * 2,
            // ),
            // Text(
            //   "Articles/News Applications",
            //   style: _theme.textTheme.headlineLarge?.copyWith(
            //     fontSize: SizeConfig.safeBlockHorizontal! * 2,
            //     fontWeight: FontWeight.w900,
            //     color: Get.isDarkMode ? Colors.white : Colors.black,
            //   ),
            // ),
            // SizedBox(
            //   height: SizeConfig.blockSizeHorizontal! * 1,
            // ),
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemBuilder: (ctx, index) => ListTile(
            //     title: Text(
            //       "Pillway Health Pharmacy",
            //       // textAlign: TextAlign.start,
            //       style: _theme.textTheme.headlineSmall?.copyWith(
            //         fontSize: SizeConfig.safeBlockHorizontal! * 1,
            //         fontWeight: FontWeight.w900,
            //         color: Get.isDarkMode ? Colors.white : Colors.black,
            //       ),
            //     ),
            //   ),
            //   itemCount: 2,
            // ),

            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 2,
            ),
            Text(
              "Public Parks And Amenities Applications",
              style: _theme.textTheme.headlineLarge?.copyWith(
                fontSize: SizeConfig.safeBlockHorizontal! * 2,
                fontWeight: FontWeight.w900,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 1,
            ),
            GetAppList(
                healthAppList: _publicServiceAndAmentiesAppList, theme: _theme),
          ],
        ),
      ),
    );
  }
}
