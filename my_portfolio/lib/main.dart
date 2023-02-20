import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/utils/di/di_container.dart';
import 'package:my_portfolio/utils/routes/routes.dart';
import 'package:my_portfolio/utils/theme/themes.dart';
import 'package:url_strategy/url_strategy.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      title: 'MashoodDevPortfolio',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
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
