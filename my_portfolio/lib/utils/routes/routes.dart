import 'package:get/route_manager.dart';
import 'package:my_portfolio/features/home/presentation/pages/home_page.dart';
import 'package:my_portfolio/features/splash/presentation/pages/splash_page.dart';

class AppRoutesName {
  static const String? splash = "/splash";
  static const String? home = "/home";

  static final List<GetPage> _getPages = [
    GetPage(
      name: splash!,
      page: () => SplashPage(),
    ),
    GetPage(
      name: home!,
      page: () => HomePage(),
    ),
  ];

  static List<GetPage> get pagesList => [..._getPages];
}
