import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';

class HomeTabletView extends StatelessWidget {
  const HomeTabletView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Obx(
              () => NavigationRail(
                selectedIndex: controller.selectedNavIndex,
                onDestinationSelected: (int index) {
                  controller.onNavigationRailIndexChange(index: index);
                },
                extended: false,
                leading: IconButton(
                  icon: controller.isDarkMode
                      ? const Icon(
                          Icons.light_mode,
                        )
                      : const Icon(
                          Icons.dark_mode,
                        ),
                  color: controller.isDarkMode ? Colors.white : Colors.black,
                  onPressed: () {
                    controller.toggleDarkMode();
                    if (Get.isDarkMode) {
                      Get.changeThemeMode(ThemeMode.light);
                    } else {
                      Get.changeThemeMode(ThemeMode.dark);
                    }
                  },
                ),
                trailing: Icon(
                  Icons.tablet_mac,
                  color: controller.isDarkMode ? Colors.white : Colors.black,
                ),
                destinations: const <NavigationRailDestination>[
                  NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text("Home"),
                      ),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text("About us"),
                      ),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text("My Portfolio"),
                      ),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text("Contact me"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const VerticalDivider(thickness: 0.5, width: 0.5),
            // This is the main content.
            Expanded(
              child: Center(
                child: Obx(
                  () => controller.pages[controller.selectedNavIndex],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
