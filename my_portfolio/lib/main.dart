import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/utils/di/di_container.dart';
import 'package:my_portfolio/utils/responsive/app_responsive.dart';
import 'package:my_portfolio/utils/routes/routes.dart';
import 'package:my_portfolio/utils/theme/themes.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  initDI();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MashoodPortfolio',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: Themes.light,
      builder: (ctx, child) {
        return child!;
      },
      darkTheme: Themes.dark,
      initialRoute: AppRoutesName.splash,
      getPages: AppRoutesName.pagesList,
    );
  }
}
