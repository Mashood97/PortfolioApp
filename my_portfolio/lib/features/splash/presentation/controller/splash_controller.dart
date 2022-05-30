import 'package:get/get.dart';
import 'package:my_portfolio/utils/routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.offAllNamed(AppRoutesName.home!);
    });
    super.onInit();
  }
}
