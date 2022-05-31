import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constant/ui_constant.dart';
import '../../../../../widget/lottie_anim.dart';

class LandingDesktopView extends StatelessWidget {
  const LandingDesktopView({Key? key}) : super(key: key);

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
                  fontSize: 40,
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
                    fontSize: 35,
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
            ],
          ),
        )
      ],
    );
  }
}
