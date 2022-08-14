import 'package:flutter/material.dart';
import 'package:my_portfolio/widget/loader.dart';

class SplashDesktopView extends StatelessWidget {
  const SplashDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Loader()),
    );
  }
}
