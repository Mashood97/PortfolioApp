import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/utils/constant/ui_constant.dart';
import 'package:my_portfolio/utils/responsive/app_responsive.dart';

import '../../widgets/about_me_detail.dart';
import '../../widgets/skill_graphic_details.dart';

class AboutMeDesktopView extends StatelessWidget {
  const AboutMeDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _query = MediaQuery.of(context);
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            flex: 3,
            child: AboutMeDetail(),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: SizeConfig.blockSizeHorizontal! * 1.75,
                    ),
                    SkillsGraphicalDataDetails(
                      theme: _theme,
                      leading: SizedBox(
                        width: SizeConfig.safeBlockHorizontal! * 5,
                        height: SizeConfig.safeBlockHorizontal! * 5,
                        child: FlutterLogo(
                          curve: Curves.fastLinearToSlowEaseIn,
                          size: SizeConfig.safeBlockHorizontal! * 2.5,
                          duration: const Duration(milliseconds: 500),
                        ),
                      ),
                      title: "Flutter",
                      progressValue: 0.9,
                      progressColor: Colors.lightBlue,
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeHorizontal! * 0.3,
                    ),
                    SkillsGraphicalDataDetails(
                      theme: _theme,
                      leading: AnimatedContainer(
                        width: SizeConfig.safeBlockHorizontal! * 5,
                        height: SizeConfig.safeBlockHorizontal! * 5,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                        child: SvgPicture.asset(
                          AppAssets.androidIcon!,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      title: "Android",
                      progressValue: 0.75,
                      progressColor: Colors.lightGreen,
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeHorizontal! * 0.3,
                    ),
                    SkillsGraphicalDataDetails(
                      theme: _theme,
                      leading: AnimatedContainer(
                        width: SizeConfig.safeBlockHorizontal! * 5,
                        height: SizeConfig.safeBlockHorizontal! * 5,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                        child: SvgPicture.asset(
                          AppAssets.jiraIcon!,
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: "Jira",
                      progressValue: 0.7,
                      progressColor: Colors.blue,
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeHorizontal! * 0.3,
                    ),
                    SkillsGraphicalDataDetails(
                      theme: _theme,
                      leading: AnimatedContainer(
                        width: SizeConfig.safeBlockHorizontal! * 5,
                        height: SizeConfig.safeBlockHorizontal! * 5,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                        child: SvgPicture.asset(
                          AppAssets.gitIcon!,
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: "Git",
                      progressValue: 0.7,
                      progressColor: Colors.deepOrange,
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeHorizontal! * 1.75,
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 3,
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: SizeConfig.blockSizeHorizontal! * 0.3,
                                ),
                                Text(
                                  "Android Developer",
                                  textAlign: TextAlign.start,
                                  style:
                                      _theme.textTheme.headlineLarge?.copyWith(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal! * 1.5,
                                    letterSpacing: 0.75,
                                    fontWeight: FontWeight.w600,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      SizeConfig.blockSizeHorizontal! * 0.75,
                                ),
                                Text(
                                  "Daily Foods PVT LTD",
                                  textAlign: TextAlign.start,
                                  style:
                                      _theme.textTheme.headlineLarge?.copyWith(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal! * 1,
                                    letterSpacing: 0.75,
                                    fontWeight: FontWeight.w500,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      SizeConfig.blockSizeHorizontal! * 0.35,
                                ),
                                Text(
                                  "2019 - 2020",
                                  textAlign: TextAlign.start,
                                  style:
                                      _theme.textTheme.headlineLarge?.copyWith(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal! * 0.9,
                                    letterSpacing: 0.75,
                                    fontWeight: FontWeight.w500,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: SizeConfig.blockSizeHorizontal! * 0.3,
                                ),
                                Text(
                                  "Application Developer",
                                  textAlign: TextAlign.start,
                                  style:
                                      _theme.textTheme.headlineLarge?.copyWith(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal! * 1.5,
                                    letterSpacing: 0.75,
                                    fontWeight: FontWeight.w600,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      SizeConfig.blockSizeHorizontal! * 0.75,
                                ),
                                Text(
                                  "Leopards Courier Services PVT LTD",
                                  textAlign: TextAlign.start,
                                  style:
                                      _theme.textTheme.headlineLarge?.copyWith(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal! * 1,
                                    letterSpacing: 0.75,
                                    fontWeight: FontWeight.w500,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      SizeConfig.blockSizeHorizontal! * 0.35,
                                ),
                                Text(
                                  "2020 - 2021",
                                  textAlign: TextAlign.start,
                                  style:
                                      _theme.textTheme.headlineLarge?.copyWith(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal! * 0.9,
                                    letterSpacing: 0.75,
                                    fontWeight: FontWeight.w500,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: SizeConfig.blockSizeHorizontal! * 0.3,
                                ),
                                Text(
                                  "Software Engineer/Flutter TeamLead",
                                  textAlign: TextAlign.start,
                                  style:
                                      _theme.textTheme.headlineLarge?.copyWith(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal! * 1.5,
                                    letterSpacing: 0.75,
                                    fontWeight: FontWeight.w600,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      SizeConfig.blockSizeHorizontal! * 0.75,
                                ),
                                Text(
                                  "Invision Solutions Inc.",
                                  textAlign: TextAlign.start,
                                  style:
                                      _theme.textTheme.headlineLarge?.copyWith(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal! * 1,
                                    letterSpacing: 0.75,
                                    fontWeight: FontWeight.w500,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      SizeConfig.blockSizeHorizontal! * 0.35,
                                ),
                                Text(
                                  "2021 - Present",
                                  textAlign: TextAlign.start,
                                  style:
                                      _theme.textTheme.headlineLarge?.copyWith(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal! * 0.9,
                                    letterSpacing: 0.75,
                                    fontWeight: FontWeight.w500,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
