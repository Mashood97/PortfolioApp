import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:my_portfolio/features/home/presentation/controller/home_controller.dart';

class HomeDesktopView extends StatelessWidget {
  const HomeDesktopView({
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
                          Icons.light,
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
                destinations: const <NavigationRailDestination>[
                  NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text("Home"),
                      ),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text("About us"),
                      ),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text("My Portfolio"),
                      ),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text("Contact me"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const VerticalDivider(thickness: 1, width: 1),
            // This is the main content.
            Expanded(
              child: Center(
                child: Obx(() =>
                    Text('selectedIndex: ${controller.selectedNavIndex}')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
