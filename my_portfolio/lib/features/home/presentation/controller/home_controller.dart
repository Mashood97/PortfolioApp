import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxInt _selectedNavIndex = 0.obs;
  int get selectedNavIndex => _selectedNavIndex.value;

  final RxBool _isDarkMode = Get.isDarkMode.obs;
  bool get isDarkMode => _isDarkMode.value;

  void toggleDarkMode() {
    _isDarkMode.value = !_isDarkMode.value;
  }

  void onNavigationRailIndexChange({required int index}) {
    _selectedNavIndex.value = index;
  }
}
