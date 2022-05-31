import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/features/landing/presentation/pages/landing_page.dart';

class HomeController extends GetxController {
  final RxInt _selectedNavIndex = 0.obs;
  int get selectedNavIndex => _selectedNavIndex.value;

  final RxList<Widget> _pages = RxList<Widget>([
    const LandingPage(),
    const Center(
      child: Text("About me"),
    ),
    const Center(
      child: Text("My Portfolio"),
    ),
    const Center(
      child: Text("Contact Me"),
    ),
  ]);

  List<Widget> get pages => [..._pages];

  final RxBool _isDarkMode = Get.isDarkMode.obs;
  bool get isDarkMode => _isDarkMode.value;

  void toggleDarkMode() {
    _isDarkMode.value = !_isDarkMode.value;
  }

  void onNavigationRailIndexChange({required int index}) {
    _selectedNavIndex.value = index;
  }
}
