import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AppResponsiveView extends StatelessWidget {
  const AppResponsiveView({
    Key? key,
    required this.desktopLayout,
    required this.mobileLayout,
    required this.tabletLayout,
  }) : super(key: key);

  final Widget? mobileLayout;
  final Widget? desktopLayout;
  final Widget? tabletLayout;

  static bool get isWatch => Get.size.width < 275;
  static bool get isMobileDevice =>
      Get.size.width >= 275 && Get.size.width < 700;
  static bool get isTabletDevice =>
      Get.size.width >= 700 && Get.size.width < 900;
  static bool get isDesktopDevice => Get.size.width >= 900;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (ctx) => mobileLayout!,
      desktop: (ctx) => desktopLayout!,
      tablet: (ctx) => tabletLayout!,
      breakpoints: const ScreenBreakpoints(
        desktop: 900,
        tablet: 700,
        watch: 275,
      ),
    );
  }
}
