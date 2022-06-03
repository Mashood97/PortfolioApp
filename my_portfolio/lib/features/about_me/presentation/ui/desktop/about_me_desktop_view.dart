import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/utils/constant/ui_constant.dart';
import 'package:my_portfolio/utils/responsive/app_responsive.dart';

class AboutMeDesktopView extends StatelessWidget {
  const AboutMeDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _query = MediaQuery.of(context);
    print(_query.size.width);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              AppAssets.devImage!,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              isAntiAlias: true,
            ),
          ),
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "About me",
                      textAlign: TextAlign.start,
                      style: _theme.textTheme.headlineLarge?.copyWith(
                        fontSize: SizeConfig.safeBlockHorizontal! * 2.5,
                        fontWeight: FontWeight.w900,
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Hello, This is Muhammad Mashood Siddiquie, I have done Bachelor's in computer science from Sir Syed University Of Engineering & Technology. I have been creating mobile applications for 3 years using Flutter and Android.I am very passionate and dedicated to my work.",
                      textAlign: TextAlign.start,
                      style: _theme.textTheme.headlineLarge?.copyWith(
                        fontSize: SizeConfig.safeBlockHorizontal! * 1.3,
                        fontWeight: FontWeight.w500,
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "These are some of my skills:",
                      textAlign: TextAlign.start,
                      style: _theme.textTheme.headlineLarge?.copyWith(
                        fontSize: SizeConfig.safeBlockHorizontal! * 2,
                        fontWeight: FontWeight.w900,
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 2,
                      shrinkWrap: true,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
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
                                  style:
                                      _theme.textTheme.headlineLarge?.copyWith(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal! * 6,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 1.5,
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
                                  style:
                                      _theme.textTheme.headlineLarge?.copyWith(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal! * 5,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 1.5,
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
