import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/features/contact_me/presentation/controller/contact_me_controller.dart';
import 'package:my_portfolio/features/landing/presentation/pages/landing_page.dart';
import 'package:my_portfolio/features/my_portfolio/presentation/pages/my_portolio_page.dart';

import '../../../about_me/presentation/pages/about_me_page.dart';
import '../../../contact_me/presentation/pages/contact_me_page.dart';

class HomeController extends GetxController {
  final RxInt _selectedNavIndex = 0.obs;
  int get selectedNavIndex => _selectedNavIndex.value;

  final RxList<Widget> _pages = RxList<Widget>([
    LandingPage(),
    const AboutMePage(),
    const MyPortfolioPage(),
    const ContactMePage(),
  ]);

  List<Widget> get pages => [..._pages];

  final RxBool _isDarkMode = Get.isDarkMode.obs;
  bool get isDarkMode => _isDarkMode.value;

  void toggleDarkMode() {
    _isDarkMode.value = !_isDarkMode.value;
  }

  void onNavigationRailIndexChange({required int index}) {
    _selectedNavIndex.value = index;
    if (_selectedNavIndex.value == 2) {
      Get.put(ContactMeController());
    }
  }
}
