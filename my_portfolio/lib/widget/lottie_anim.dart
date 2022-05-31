import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationWidget extends StatelessWidget {
  const LottieAnimationWidget({
    Key? key,
    required this.animLocalPath,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  final String? animLocalPath;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      animLocalPath!,
      animate: true,
      fit: fit,
      reverse: true,
      repeat: true,
    );
  }
}
