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
            SizedBox(
              height: SizeConfig.safeBlockVertical! * 45,
              width: SizeConfig.safeBlockHorizontal! * 80,
              child: Image.asset(
                "assets/icons/img1.png",
                filterQuality: FilterQuality.high,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              "Hello,",
              style: _theme.textTheme.headlineLarge?.copyWith(
                fontSize: SizeConfig.safeBlockHorizontal! * 3.5,
                fontWeight: FontWeight.w700,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "I'm Mashood",
              style: _theme.textTheme.headlineLarge?.copyWith(
                fontSize: SizeConfig.safeBlockHorizontal! * 5.5,
                fontWeight: FontWeight.w900,
                height: 1.5,
                color: Get.isDarkMode ? Colors.white : Colors.black,
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
                  fontSize: SizeConfig.safeBlockHorizontal! * 3.5,
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
                RoundedAvatarSvgImage(
                  appImage: AppAssets.fiverIcon,
                  onTap: () {
                    controller.launchSocialAccounts(
                        url: "https://www.fiverr.com/mashood9712");
                  },
                ),
                RoundedAvatarSvgImage(
                  appImage: AppAssets.upworkIcon,
                  onTap: () {
                    controller.launchSocialAccounts(
                        url:
                            "https://www.upwork.com/freelancers/~013e211d8172e9bd49");
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
