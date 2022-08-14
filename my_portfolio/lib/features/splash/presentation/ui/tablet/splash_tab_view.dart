import 'package:flutter/material.dart';

import '../../../../../widget/loader.dart';

class SplashTabletView extends StatelessWidget {
  const SplashTabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Loader(),
      ),
    );
  }
}
