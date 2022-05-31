import 'package:flutter/material.dart';
import 'package:my_portfolio/features/landing/presentation/ui/desktop/landing_desktop_view.dart';
import 'package:my_portfolio/features/landing/presentation/ui/mobile/landing_mobile_view.dart';
import 'package:my_portfolio/features/landing/presentation/ui/tablet/landing_tablet_view.dart';
import 'package:my_portfolio/utils/responsive/app_responsive.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppResponsiveView(
      desktopLayout: LandingDesktopView(),
      mobileLayout: LandingMobileView(),
      tabletLayout: LandingTabletView(),
    );
  }
}
