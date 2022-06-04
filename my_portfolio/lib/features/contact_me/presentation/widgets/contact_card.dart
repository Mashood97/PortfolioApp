import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/utils/responsive/app_responsive.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
    required ThemeData theme,
    required this.icon,
    required this.subTitle,
    required this.title,
    required this.subTitleFontSize,
    required this.titleFontSize,
    required this.iconSize,
  })  : _theme = theme,
        super(key: key);

  final ThemeData _theme;
  final String? title;
  final String? subTitle;
  final IconData? icon;
  final double? titleFontSize;
  final double? subTitleFontSize;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 20.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          splashColor: _theme.primaryColor,
          hoverColor: _theme.primaryColor,
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon!,
                  size: iconSize!,
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2,
                ),
                Text(
                  title!,
                  textAlign: TextAlign.center,
                  style: _theme.textTheme.headlineLarge?.copyWith(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.w600,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2,
                ),
                Text(
                  subTitle!,
                  textAlign: TextAlign.center,
                  style: _theme.textTheme.headlineLarge?.copyWith(
                    fontSize: subTitleFontSize,
                    overflow: TextOverflow.clip,
                    fontWeight: FontWeight.w400,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
