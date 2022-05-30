import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:my_portfolio/features/splash/presentation/controller/splash_controller.dart';
import 'package:my_portfolio/features/splash/presentation/ui/desktop/splash_desktop_view.dart';
import 'package:my_portfolio/features/splash/presentation/ui/mobile/splash_mob_view.dart';
import 'package:my_portfolio/features/splash/presentation/ui/tablet/splash_tab_view.dart';
import 'package:my_portfolio/utils/responsive/app_responsive.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

  final _splashController = Get.find<SplashController>();
  @override
  Widget build(BuildContext context) {
    return const AppResponsiveView(
      desktopLayout: SplashDesktopView(),
      mobileLayout: SplashMobileView(),
      tabletLayout: SplashTabletView(),
    );
  }
}
