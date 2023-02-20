import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/constant/ui_constant.dart';
import '../../../../../utils/responsive/app_responsive.dart';

class AboutMeTabletView extends StatelessWidget {
  const AboutMeTabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    SizeConfig().init(context);

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: SizeConfig.screenHeight! * 0.7,
                child: Image.asset(
                  AppAssets.devImage!,
                  fit: BoxFit.scaleDown,
                  filterQuality: FilterQuality.high,
                  isAntiAlias: true,
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical! * 2.5,
            ),
            Text(
              "Hello, This is Muhammad Mashood Siddiquie, I have completed my Bachelor's in Computer Science from Sir Syed University Of Engineering & Technology. I have been creating mobile applications for 3+ years using Flutter and Android. I am very passionate and dedicated to my work. In my leisure time i love to play video games.",
              textAlign: TextAlign.justify,
              style: _theme.textTheme.headlineLarge?.copyWith(
                fontSize: SizeConfig.safeBlockHorizontal! * 1.75,
                letterSpacing: 1.25,
                fontWeight: FontWeight.w500,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical! * 3.5,
            ),
            Text(
              "These are some of my skills:",
              textAlign: TextAlign.start,
              style: _theme.textTheme.headlineLarge?.copyWith(
                letterSpacing: 3,
                fontSize: SizeConfig.safeBlockHorizontal! * 2,
                fontWeight: FontWeight.w900,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlutterLogo(
                  curve: Curves.fastLinearToSlowEaseIn,
                  size: SizeConfig.safeBlockHorizontal! * 4,
                  duration: const Duration(milliseconds: 500),
                ),
                SizedBox(
                  width: SizeConfig.safeBlockHorizontal! * 2,
                ),
                const Expanded(
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey,
                    color: Colors.amber,
                    semanticsLabel: "Flutter",
                    value: 0.9,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.safeBlockHorizontal! * 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedContainer(
                  width: SizeConfig.safeBlockHorizontal! * 5,
                  height: SizeConfig.safeBlockHorizontal! * 5,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                  child: SvgPicture.asset(
                    AppAssets.androidIcon!,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: SizeConfig.safeBlockHorizontal! * 2,
                ),
                const Expanded(
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey,
                    semanticsLabel: "Android",
                    color: Colors.amber,
                    value: 0.75,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.safeBlockHorizontal! * 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedContainer(
                  width: SizeConfig.safeBlockHorizontal! * 5,
                  height: SizeConfig.safeBlockHorizontal! * 5,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                  child: SvgPicture.asset(
                    AppAssets.jiraIcon!,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: SizeConfig.safeBlockHorizontal! * 2,
                ),
                const Expanded(
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey,
                    semanticsLabel: "Jira",
                    color: Colors.amber,
                    value: 0.7,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.safeBlockHorizontal! * 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedContainer(
                  width: SizeConfig.safeBlockHorizontal! * 5,
                  height: SizeConfig.safeBlockHorizontal! * 5,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                  child: SvgPicture.asset(
                    AppAssets.gitIcon!,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: SizeConfig.safeBlockHorizontal! * 2,
                ),
                const Expanded(
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey,
                    semanticsLabel: "Git",
                    color: Colors.amber,
                    value: 0.7,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
