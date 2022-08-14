import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/utils/responsive/app_responsive.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Center(
      child: SpinKitCircle(
        color: Get.isDarkMode ? Colors.white : Colors.black,
      ),
    );
  }
}
