class AppModel {
  final String appTitle;
  final String appIcon;
  final String appDescription;
  final List<AppLinkModel> appLinksWidget;

  AppModel({
    required this.appTitle,
    required this.appIcon,
    required this.appDescription,
    required this.appLinksWidget,
  });
}

class AppLinkModel {
  final String appIcon;
  final String appLink;
  AppLinkModel({
    required this.appIcon,
    required this.appLink,
  });
}
