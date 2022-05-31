import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:my_portfolio/features/home/presentation/controller/home_controller.dart';
import 'package:my_portfolio/features/home/presentation/ui/desktop/home_desktop_view.dart';
import 'package:my_portfolio/features/home/presentation/ui/mobile/home_mobile_view.dart';
import 'package:my_portfolio/features/home/presentation/ui/tablet/home_tablet_view.dart';
import 'package:my_portfolio/utils/responsive/app_responsive.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return AppResponsiveView(
      desktopLayout: HomeDesktopView(controller: _homeController),
      mobileLayout: HomeMobileView(controller: _homeController),
      tabletLayout: HomeTabletView(controller: _homeController),
    );
  }
}
