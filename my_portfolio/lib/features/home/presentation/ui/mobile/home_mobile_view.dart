import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/responsive/app_responsive.dart';
import '../../controller/home_controller.dart';

class HomeMobileView extends StatelessWidget {
  const HomeMobileView({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => IndexedStack(
            index: controller.selectedNavIndex,
            children: controller.pages,
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.info,
                ),
                label: "About me"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.work,
              ),
              label: "My Portfolio",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.contact_mail_sharp,
                ),
                label: "Contact me"),
          ],
          currentIndex: controller.selectedNavIndex,
          onTap: (index) {
            controller.onNavigationRailIndexChange(index: index);
          },
        ),
      ),
      floatingActionButton: Obx(
        () => FloatingActionButton(
          onPressed: () {
            controller.toggleDarkMode();
            if (Get.isDarkMode) {
              Get.changeThemeMode(ThemeMode.light);
            } else {
              Get.changeThemeMode(ThemeMode.dark);
            }
          },
          backgroundColor: Colors.amber,
          child: controller.isDarkMode
              ? const Icon(
                  Icons.light_mode,
                  color: Colors.black,
                )
              : const Icon(
                  Icons.dark_mode,
                  color: Colors.black,
                ),
        ),
      ),
    );
  }
}
