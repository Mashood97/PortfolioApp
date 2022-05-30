import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationWidget extends StatelessWidget {
  const LottieAnimationWidget({
    Key? key,
    required this.animLocalPath,
  }) : super(key: key);

  final String? animLocalPath;
  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      animLocalPath!,
      animate: true,
      fit: BoxFit.cover,
      reverse: true,
      repeat: true,
    );
  }
}
