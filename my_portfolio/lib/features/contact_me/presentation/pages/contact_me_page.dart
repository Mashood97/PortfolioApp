import 'package:flutter/material.dart';
import 'package:my_portfolio/features/contact_me/presentation/ui/desktop/contact_desktop_view.dart';
import 'package:my_portfolio/features/contact_me/presentation/ui/mobile/contact_mobile_view.dart';
import 'package:my_portfolio/features/contact_me/presentation/ui/tablet/contact_tablet_view.dart';
import 'package:my_portfolio/utils/responsive/app_responsive.dart';

class ContactMePage extends StatelessWidget {
  const ContactMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppResponsiveView(
      mobileLayout: ContactMobileView(),
      desktopLayout: ContactDesktopView(),
      tabletLayout: ContactTabletView(),
    );
  }
}
