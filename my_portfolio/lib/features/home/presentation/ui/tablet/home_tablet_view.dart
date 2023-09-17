import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/responsive/app_responsive.dart';
import '../../controller/home_controller.dart';

class HomeTabletView extends StatelessWidget {
  const HomeTabletView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            LayoutBuilder(
              builder: (context, constraint) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraint.maxHeight),
                    child: IntrinsicHeight(
                      child: Obx(
                        () => NavigationRail(
                          selectedIndex: controller.selectedNavIndex,
                          onDestinationSelected: (int index) {
                            controller.onNavigationRailIndexChange(
                                index: index);
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
                            iconSize: 30,
                            color: controller.isDarkMode
                                ? Colors.white
                                : Colors.black,
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
                            color: controller.isDarkMode
                                ? Colors.white
                                : Colors.black,
                            size: 25,
                          ),
                          destinations: const <NavigationRailDestination>[
                            NavigationRailDestination(
                              icon: SizedBox.shrink(),
                              label: Padding(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                child: RotatedBox(
                                  quarterTurns: -1,
                                  child: Text(
                                    "Home",
                                  ),
                                ),
                              ),
                            ),
                            NavigationRailDestination(
                              icon: SizedBox.shrink(),
                              label: Padding(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                child: RotatedBox(
                                  quarterTurns: -1,
                                  child: Text("About me"),
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
                    ),
                  ),
                );
              },
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
