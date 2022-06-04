import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constant/ui_constant.dart';
import '../../../../../utils/responsive/app_responsive.dart';
import '../../../../../widget/lottie_anim.dart';
import '../../controller/landing_controller.dart';
import '../../widgets/rounded_avatar_img.dart';

class LandingTabletView extends StatelessWidget {
  const LandingTabletView({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final LandingController controller;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    SizeConfig().init(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15.0,
          left: 15,
          bottom: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LottieAnimationWidget(
              animLocalPath: Get.isDarkMode
                  ? AppAssets.personTypingDarkAnim
                  : AppAssets.personTypingAnim,
              fit: BoxFit.scaleDown,
            ),
            Text(
              "Hello,",
              style: _theme.textTheme.headlineLarge?.copyWith(
                fontSize: 50,
                fontWeight: FontWeight.w700,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FittedBox(
              fit: BoxFit.cover,
              child: Text(
                "I'm Mashood",
                style: _theme.textTheme.headlineLarge?.copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: _theme.primaryColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  )),
              padding: const EdgeInsets.all(15),
              child: DefaultTextStyle(
                maxLines: 1,
                overflow: TextOverflow.fade,
                style: _theme.textTheme.headlineLarge!.copyWith(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                child: AnimatedTextKit(
                  isRepeatingAnimation: true,
                  repeatForever: true,
                  animatedTexts: [
                    TypewriterAnimatedText("I'm a Software Engineer"),
                    TypewriterAnimatedText('And a Flutter Enthusiast'),
                    TypewriterAnimatedText('And Android Developer...'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              runSpacing: 20,
              spacing: 20,
              children: [
                RoundedAvatarSvgImage(
                  appImage: AppAssets.githubIcon,
                  onTap: () {
                    controller.launchSocialAccounts(
                        url: "https://github.com/Mashood97");
                  },
                ),
                RoundedAvatarSvgImage(
                  appImage: AppAssets.mediumIcon,
                  onTap: () {
                    controller.launchSocialAccounts(
                        url: "https://medium.com/@mashoodsidd97");
                  },
                ),
                RoundedAvatarSvgImage(
                  appImage: AppAssets.linkedinIcon,
                  onTap: () {
                    controller.launchSocialAccounts(
                        url:
                            "https://www.linkedin.com/in/mashood-siddiquie-5940a9168/");
                  },
                ),
                RoundedAvatarSvgImage(
                  appImage: AppAssets.fbIcon,
                  onTap: () {
                    controller.launchSocialAccounts(
                        url:
                            "https://web.facebook.com/mashood.sidd?_rdc=1&_rdr");
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
