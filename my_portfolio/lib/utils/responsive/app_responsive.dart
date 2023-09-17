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
      Get.size.width >= 700 && Get.size.width < 1100;
  static bool get isDesktopDevice => Get.size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (ctx) => mobileLayout!,
      desktop: (ctx) => desktopLayout!,
      tablet: (ctx) => tabletLayout!,
      breakpoints: const ScreenBreakpoints(
        desktop: 1100,
        tablet: 700,
        watch: 200,
      ),
    );
  }
}

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  static double? _safeAreaHorizontal;
  static double? _safeAreaVertical;
  static double? safeBlockHorizontal;
  static double? safeBlockVertical;
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData?.size.width;
    screenHeight = _mediaQueryData?.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;

    _safeAreaHorizontal =
        _mediaQueryData!.padding.left + _mediaQueryData!.padding.right;
    _safeAreaVertical =
        _mediaQueryData!.padding.top + _mediaQueryData!.padding.bottom;
    safeBlockHorizontal = (screenWidth! - _safeAreaHorizontal!) / 100;
    safeBlockVertical = (screenHeight! - _safeAreaVertical!) / 100;
  }
}
