import 'package:flutter/material.dart';
import 'package:my_portfolio/features/about_me/presentation/ui/desktop/about_me_desktop_view.dart';
import 'package:my_portfolio/features/about_me/presentation/ui/mobile/about_me_mobile_view.dart';
import 'package:my_portfolio/features/about_me/presentation/ui/tablet/about_me_tablet_view.dart';
import 'package:my_portfolio/utils/responsive/app_responsive.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppResponsiveView(
      mobileLayout: AboutMeMobileView(),
      desktopLayout: AboutMeDesktopView(),
      tabletLayout: AboutMeTabletView(),
    );
  }
}
