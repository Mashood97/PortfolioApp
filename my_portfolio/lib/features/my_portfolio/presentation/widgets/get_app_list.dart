import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/features/my_portfolio/model/app_model.dart';
import 'package:my_portfolio/utils/responsive/app_responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class GetAppList extends StatelessWidget {
  const GetAppList({
    Key? key,
    required List<AppModel> healthAppList,
    required ThemeData theme,
  })  : _healthAppList = healthAppList,
        _theme = theme,
        super(key: key);

  final List<AppModel> _healthAppList;
  final ThemeData _theme;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => const Divider(
        endIndent: 50,
        indent: 50,
      ),
      itemBuilder: (ctx, index) => Card(
        elevation: 4,
        child: ListTile(
          title: Text(
            _healthAppList[index].appTitle,
            // textAlign: TextAlign.start,
            style: _theme.textTheme.headlineLarge?.copyWith(
              fontSize: AppResponsiveView.isDesktopDevice
                  ? SizeConfig.safeBlockHorizontal! * 1
                  : SizeConfig.safeBlockHorizontal! * 2.5,
              fontWeight: FontWeight.w600,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: SizeConfig.blockSizeHorizontal! * 0.5,
              ),
              Text(
                _healthAppList[index].appDescription,
                // textAlign: TextAlign.start,
                style: _theme.textTheme.headlineSmall?.copyWith(
                  fontSize: AppResponsiveView.isDesktopDevice
                      ? SizeConfig.safeBlockHorizontal! * 0.85
                      : SizeConfig.safeBlockHorizontal! * 2,
                  fontWeight: FontWeight.w500,
                  color: Get.isDarkMode ? Colors.white54 : Colors.black54,
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeHorizontal! * 0.5,
              ),
              Text(
                "Applications Platforms:",
                // textAlign: TextAlign.start,
                style: _theme.textTheme.headlineSmall?.copyWith(
                  fontSize: AppResponsiveView.isDesktopDevice
                      ? SizeConfig.safeBlockHorizontal! * 1
                      : SizeConfig.safeBlockHorizontal! * 2,
                  fontWeight: FontWeight.w500,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeHorizontal! * 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: _healthAppList[index]
                    .appLinksWidget
                    .map(
                      (e) => IconButton(
                        onPressed: () async {
                          if (!await launchUrl(Uri.parse(e.appLink))) {
                            throw 'We are unable to launch , please try again';
                          }
                        },
                        icon: Image.asset(
                          e.appIcon,
                          fit: BoxFit.contain,
                          color: Get.isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                    )
                    .toList(),
              )
            ],
          ),
          leading: Image.asset(
            _healthAppList[index].appIcon,
          ),
        ),
      ),
      itemCount: _healthAppList.length,
    );
  }
}
