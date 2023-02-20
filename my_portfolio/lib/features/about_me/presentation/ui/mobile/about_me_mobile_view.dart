import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/constant/ui_constant.dart';
import '../../../../../utils/responsive/app_responsive.dart';

class AboutMeMobileView extends StatelessWidget {
  const AboutMeMobileView({Key? key}) : super(key: key);

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
                height: SizeConfig.screenHeight! * 0.6,
                child: Image.asset(
                  AppAssets.devImage!,
                  fit: BoxFit.scaleDown,
                  filterQuality: FilterQuality.high,
                  isAntiAlias: true,
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockHorizontal! * 2,
            ),
            Text(
              "Hello, This is Muhammad Mashood Siddiquie, I have done Bachelor's in computer science from Sir Syed University Of Engineering & Technology. I have been creating mobile applications for 3 years using Flutter and Android.I am very passionate and dedicated to my work.",
              textAlign: TextAlign.justify,
              style: _theme.textTheme.headlineLarge?.copyWith(
                fontSize: SizeConfig.safeBlockHorizontal! * 3,
                fontWeight: FontWeight.w500,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockHorizontal! * 2,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "These are some of my skills:",
                textAlign: TextAlign.start,
                style: _theme.textTheme.headlineLarge?.copyWith(
                  fontSize: SizeConfig.safeBlockHorizontal! * 4,
                  fontWeight: FontWeight.w900,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlutterLogo(
                  curve: Curves.fastLinearToSlowEaseIn,
                  size: SizeConfig.safeBlockHorizontal! * 7,
                  duration: const Duration(milliseconds: 500),
                ),
                SizedBox(
                  width: SizeConfig.safeBlockHorizontal! * 2,
                ),
                const Expanded(
                  child: LinearProgressIndicator(
                    semanticsLabel: "Flutter",
                    backgroundColor: Colors.grey,
                    color: Colors.amber,
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
                  width: SizeConfig.safeBlockHorizontal! * 7,
                  height: SizeConfig.safeBlockHorizontal! * 7,
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
                    color: Colors.amber,
                    semanticsLabel: "Android",
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
                    semanticsLabel: "Jira",
                    backgroundColor: Colors.grey,
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
                    color: Colors.amber,
                    semanticsLabel: "Git",
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
