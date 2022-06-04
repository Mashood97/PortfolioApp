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
              height: SizeConfig.safeBlockVertical! * 3.5,
            ),
            Text(
              "Hello, This is Muhammad Mashood Siddiquie, I have done Bachelor's in computer science from Sir Syed University Of Engineering & Technology. I have been creating mobile applications for 3 years using Flutter and Android.I am very passionate and dedicated to my work.",
              textAlign: TextAlign.center,
              style: _theme.textTheme.headlineLarge?.copyWith(
                fontSize: SizeConfig.safeBlockHorizontal! * 3,
                fontWeight: FontWeight.w500,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical! * 3.5,
            ),
            Align(
              alignment: Alignment.centerLeft,
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
              height: SizeConfig.safeBlockVertical! * 3.5,
            ),
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1,
              shrinkWrap: true,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    hoverColor: _theme.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlutterLogo(
                          curve: Curves.fastLinearToSlowEaseIn,
                          size: SizeConfig.safeBlockHorizontal! * 15,
                          duration: const Duration(milliseconds: 500),
                        ),
                        Text(
                          "Flutter",
                          textAlign: TextAlign.start,
                          style: _theme.textTheme.headlineLarge?.copyWith(
                            fontSize: SizeConfig.safeBlockHorizontal! * 6,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1.5,
                            color: Get.isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    hoverColor: _theme.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AnimatedContainer(
                          width: SizeConfig.safeBlockHorizontal! * 15,
                          height: SizeConfig.safeBlockHorizontal! * 15,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn,
                          child: SvgPicture.asset(
                            AppAssets.androidIcon!,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          "Android",
                          textAlign: TextAlign.start,
                          style: _theme.textTheme.headlineLarge?.copyWith(
                            fontSize: SizeConfig.safeBlockHorizontal! * 6,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1.5,
                            color: Get.isDarkMode ? Colors.white : Colors.black,
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
    );
  }
}
