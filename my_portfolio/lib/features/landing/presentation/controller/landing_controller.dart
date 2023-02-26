import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingController extends GetxController {
  void launchSocialAccounts({required String? url}) async {
    if (!await launchUrl(Uri.parse(url!))) {
      throw 'We are unable to launch  $url, please try again';
    }
  }
}
