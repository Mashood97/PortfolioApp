import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constant/ui_constant.dart';
import 'package:my_portfolio/widget/lottie_anim.dart';

import '../../../../../widget/loader.dart';

class SplashMobileView extends StatelessWidget {
  const SplashMobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Loader(),
      ),
    );
  }
}
