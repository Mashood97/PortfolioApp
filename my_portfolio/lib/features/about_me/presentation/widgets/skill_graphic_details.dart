import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/responsive/app_responsive.dart';

class SkillsGraphicalDataDetails extends StatelessWidget {
  const SkillsGraphicalDataDetails({
    Key? key,
    required ThemeData theme,
    required this.leading,
    required this.progressColor,
    required this.progressValue,
    required this.title,
  })  : _theme = theme,
        super(key: key);

  final ThemeData _theme;
  final Widget leading;
  final String title;
  final double progressValue;
  final Color progressColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        title,
        textAlign: TextAlign.start,
        style: _theme.textTheme.headlineLarge?.copyWith(
          fontSize: AppResponsiveView.isDesktopDevice
              ? SizeConfig.safeBlockHorizontal! * 1.5
              : SizeConfig.safeBlockHorizontal! * 2.5,
          fontWeight: FontWeight.w500,
          color: Get.isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      trailing: Text(
        "${progressValue * 100}%",
        textAlign: TextAlign.start,
        style: _theme.textTheme.headlineLarge?.copyWith(
          fontSize: AppResponsiveView.isDesktopDevice
              ? SizeConfig.safeBlockHorizontal! * 1.25
              : SizeConfig.safeBlockHorizontal! * 2.25,
          fontWeight: FontWeight.w500,
          color: Get.isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      subtitle: LinearProgressIndicator(
        backgroundColor: Get.isDarkMode ? Colors.white : Colors.grey.shade300,
        color: progressColor,
        semanticsLabel: title,
        value: progressValue,
      ),
    );
  }
}
