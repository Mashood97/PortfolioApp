import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constant/ui_constant.dart';
import 'package:my_portfolio/widget/lottie_anim.dart';

class SplashMobileView extends StatelessWidget {
  const SplashMobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: LottieAnimationWidget(
            animLocalPath: AppAssets.splashAnimation,
          ),
        ),
      ),
    );
  }
}
