import 'package:flutter/material.dart';

import '../../../../../utils/constant/ui_constant.dart';
import '../../../../../widget/lottie_anim.dart';

class SplashDesktopView extends StatelessWidget {
  const SplashDesktopView({Key? key}) : super(key: key);

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
