import 'package:flutter/material.dart';
import 'package:my_portfolio/features/my_portfolio/presentation/ui/desktop/my_portfolio_desktop_view.dart';
import 'package:my_portfolio/features/my_portfolio/presentation/ui/mobile/my_portfolio_mobile_view.dart';
import 'package:my_portfolio/features/my_portfolio/presentation/ui/tablet/my_portfolio_tablet_view.dart';
import 'package:my_portfolio/utils/responsive/app_responsive.dart';

class MyPortfolioPage extends StatelessWidget {
  const MyPortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppResponsiveView(
      desktopLayout: MyPortfolioDesktopView(),
      mobileLayout: MyPortfolioMobileView(),
      tabletLayout: MyPortfolioTabletView(),
    );
  }
}
