import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/responsive/app_responsive.dart';

class AboutMeDetail extends StatelessWidget {
  const AboutMeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Skills & Experience",
          textAlign: TextAlign.start,
          style: _theme.textTheme.headlineLarge?.copyWith(
            fontSize: (AppResponsiveView.isDesktopDevice)
                ? SizeConfig.safeBlockHorizontal! * 3.5
                : SizeConfig.safeBlockHorizontal! * 5,
            fontWeight: FontWeight.w900,
            color: Colors.amber,
          ),
        ),
        SizedBox(
          height: (AppResponsiveView.isDesktopDevice)
              ? SizeConfig.safeBlockHorizontal! * 2
              : SizeConfig.safeBlockHorizontal! * 2.5,
        ),
        Text(
          "Hello, This is Muhammad Mashood Siddiquie, I have completed my Bachelor's in Computer Science from Sir Syed University Of Engineering & Technology. I have been creating mobile applications for 3+ years using Flutter and Android. I am very passionate and dedicated to my work. In my leisure time i love to play video games.",
          textAlign: TextAlign.justify,
          style: _theme.textTheme.headlineLarge?.copyWith(
            fontSize: (AppResponsiveView.isDesktopDevice)
                ? SizeConfig.blockSizeHorizontal! * 1.25
                : SizeConfig.blockSizeHorizontal! * 2.5,
            fontWeight: FontWeight.w400,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        SizedBox(
          height: (AppResponsiveView.isDesktopDevice)
              ? SizeConfig.safeBlockHorizontal! * 2
              : SizeConfig.safeBlockHorizontal! * 2.5,
        ),
        Text(
          "In my professional 3+ career i have worked for 3 companies with the most talented people around by whom I've groom myself in technical as well as the personal growth. Furthermore I've worked on many project and products which enhanced and polished my skills more during my each tenure.",
          textAlign: TextAlign.justify,
          style: _theme.textTheme.headlineLarge?.copyWith(
            fontSize: (AppResponsiveView.isDesktopDevice)
                ? SizeConfig.blockSizeHorizontal! * 1.25
                : SizeConfig.blockSizeHorizontal! * 2.5,
            fontWeight: FontWeight.w400,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        SizedBox(
          height: (AppResponsiveView.isDesktopDevice)
              ? SizeConfig.safeBlockHorizontal! * 2
              : SizeConfig.safeBlockHorizontal! * 2.5,
        ),
        RichText(
          text: TextSpan(
            text: "Visit my ",
            style: _theme.textTheme.headlineLarge?.copyWith(
              fontSize: (AppResponsiveView.isDesktopDevice)
                  ? SizeConfig.blockSizeHorizontal! * 1.25
                  : SizeConfig.blockSizeHorizontal! * 2.5,
              fontWeight: FontWeight.w400,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            ),
            children: [
              TextSpan(
                text: "LinkedIn",
                style: _theme.textTheme.headlineLarge?.copyWith(
                  fontSize: (AppResponsiveView.isDesktopDevice)
                      ? SizeConfig.blockSizeHorizontal! * 1.25
                      : SizeConfig.blockSizeHorizontal! * 2.5,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                  color: Colors.amber,
                ),
              ),
              TextSpan(
                text: " profile for more details or just contact me.",
                style: _theme.textTheme.headlineLarge?.copyWith(
                  fontSize: (AppResponsiveView.isDesktopDevice)
                      ? SizeConfig.blockSizeHorizontal! * 1.25
                      : SizeConfig.blockSizeHorizontal! * 2.5,
                  fontWeight: FontWeight.w400,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
