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
    SizeConfig().init(context);
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
                        fontSize: SizeConfig.safeBlockHorizontal! * 1.75,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 3,
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeHorizontal! * 2,
                    ),
                    Text(
                      "Hello, This is Muhammad Mashood Siddiquie, I have completed my Bachelor's in Computer Science from Sir Syed University Of Engineering & Technology. I have been creating mobile applications for 3+ years using Flutter and Android. I am very passionate and dedicated to my work. In my leisure time i love to play video games.",
                      textAlign: TextAlign.justify,
                      style: _theme.textTheme.headlineLarge?.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 1.25,
                        letterSpacing: 1.25,
                        height: SizeConfig.safeBlockHorizontal! * 0.125,
                        fontWeight: FontWeight.w500,
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeHorizontal! * 1.75,
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
                            color: Colors.amber,
                            value: 0.75,
                            semanticsLabel: "Android",
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
                            color: Colors.amber,
                            semanticsLabel: "Git",
                            value: 0.7,
                          ),
                        ),
                      ],
                    ),

                    // GridView.count(
                    //   crossAxisCount: 1,
                    //   childAspectRatio: 2,
                    //   shrinkWrap: true,
                    //   mainAxisSpacing: 10,
                    //   crossAxisSpacing: 10,
                    //   scrollDirection: Axis.horizontal,
                    //   children: [
                    //     Card(
                    //       elevation: 5,
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(10),
                    //       ),
                    //       child: InkWell(
                    //         hoverColor: _theme.primaryColor,
                    //         borderRadius: BorderRadius.circular(10),
                    //         onTap: () {},
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           children: [
                    // FlutterLogo(
                    //   curve: Curves.fastLinearToSlowEaseIn,
                    //   size: SizeConfig.safeBlockHorizontal! * 15,
                    //   duration: const Duration(milliseconds: 500),
                    // ),
                    //             Text(
                    //               "Flutter",
                    //               textAlign: TextAlign.start,
                    //               style:
                    //                   _theme.textTheme.headlineLarge?.copyWith(
                    //                 fontSize:
                    //                     SizeConfig.safeBlockHorizontal! * 6,
                    //                 fontWeight: FontWeight.w900,
                    //                 letterSpacing: 1.5,
                    //                 color: Get.isDarkMode
                    //                     ? Colors.white
                    //                     : Colors.black,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //     Card(
                    //       elevation: 5,
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(10),
                    //       ),
                    //       child: InkWell(
                    //         hoverColor: _theme.primaryColor,
                    //         borderRadius: BorderRadius.circular(10),
                    //         onTap: () {},
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           children: [
                    // AnimatedContainer(
                    //   width: SizeConfig.safeBlockHorizontal! * 15,
                    //   height: SizeConfig.safeBlockHorizontal! * 15,
                    //   duration: const Duration(milliseconds: 500),
                    //   curve: Curves.fastOutSlowIn,
                    //   child: SvgPicture.asset(
                    //     AppAssets.androidIcon!,
                    //     fit: BoxFit.contain,
                    //   ),
                    // ),
                    //             Text(
                    //               "Android",
                    //               textAlign: TextAlign.start,
                    //               style:
                    //                   _theme.textTheme.headlineLarge?.copyWith(
                    //                 fontSize:
                    //                     SizeConfig.safeBlockHorizontal! * 5,
                    //                 fontWeight: FontWeight.w900,
                    //                 letterSpacing: 1.5,
                    //                 color: Get.isDarkMode
                    //                     ? Colors.white
                    //                     : Colors.black,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
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
