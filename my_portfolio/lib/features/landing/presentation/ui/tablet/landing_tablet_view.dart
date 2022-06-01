import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_button/sign_button.dart';

import '../../../../../utils/constant/ui_constant.dart';
import '../../../../../widget/lottie_anim.dart';
import '../../controller/landing_controller.dart';

class LandingTabletView extends StatelessWidget {
  const LandingTabletView({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final LandingController controller;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 4,
          child: LottieAnimationWidget(
            animLocalPath: Get.isDarkMode
                ? AppAssets.personTypingDarkAnim
                : AppAssets.personTypingAnim,
            fit: BoxFit.contain,
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Hello,",
                style: _theme.textTheme.headlineLarge?.copyWith(
                  fontSize: 30,
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
                    fontSize: 25,
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
                children: [
                  SignInButton.mini(
                    elevation: 20.0,
                    padding: 10,
                    buttonSize: ButtonSize.large,
                    buttonType: Get.isDarkMode
                        ? ButtonType.githubDark
                        : ButtonType.github,
                    onPressed: () {
                      controller.launchSocialAccounts(
                          url: "https://github.com/Mashood97");
                    },
                  ),
                  SignInButton.mini(
                    elevation: 20.0,
                    padding: 10,
                    buttonSize: ButtonSize.large,
                    buttonType: ButtonType.linkedin,
                    onPressed: () {
                      controller.launchSocialAccounts(
                          url:
                              "https://www.linkedin.com/in/mashood-siddiquie-5940a9168/");
                    },
                  ),
                  SignInButton.mini(
                    elevation: 20.0,
                    padding: 10,
                    buttonSize: ButtonSize.large,
                    buttonType: Get.isDarkMode
                        ? ButtonType.facebookDark
                        : ButtonType.facebook,
                    onPressed: () {
                      controller.launchSocialAccounts(
                          url:
                              "https://web.facebook.com/mashood.sidd?_rdc=1&_rdr");
                    },
                  ),
                  SignInButton.mini(
                    elevation: 20.0,
                    padding: 10,
                    buttonSize: ButtonSize.large,
                    buttonType: ButtonType.instagram,
                    onPressed: () {},
                  ),
                  SignInButton.mini(
                    elevation: 20.0,
                    padding: 10,
                    buttonSize: ButtonSize.large,
                    buttonType: ButtonType.twitter,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
