import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class RoundedAvatarSvgImage extends StatelessWidget {
  const RoundedAvatarSvgImage({
    Key? key,
    required this.appImage,
    required this.onTap,
    this.fit = BoxFit.contain,
  }) : super(key: key);

  final String? appImage;
  final BoxFit? fit;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.amber,
      hoverColor: Get.isDarkMode ? Colors.amber : null,
      customBorder: const CircleBorder(),
      radius: 60,
      onTap: onTap,
      child: SvgPicture.asset(
        appImage!,
        fit: fit!,
        color: Get.isDarkMode ? Colors.white : Colors.black,
      ),
    );
  }
}
