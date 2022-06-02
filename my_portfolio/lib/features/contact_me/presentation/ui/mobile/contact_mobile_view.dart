import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constant/ui_constant.dart';
import '../../../../../widget/lottie_anim.dart';
import '../../widgets/contact_card.dart';

class ContactMobileView extends StatelessWidget {
  const ContactMobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LottieAnimationWidget(
              animLocalPath: Get.isDarkMode
                  ? AppAssets.contactMeDarkAnim
                  : AppAssets.contactMeAnim,
              fit: BoxFit.contain,
            ),
            const VerticalDivider(thickness: 1, width: 1),
            Text(
              "Get in touch",
              textAlign: TextAlign.center,
              style: _theme.textTheme.headlineLarge?.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "I would love to learn about your project.",
              textAlign: TextAlign.center,
              style: _theme.textTheme.headlineLarge?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ContactCard(
              theme: _theme,
              subTitle: "Karachi, Pakistan",
              title: "Location",
              titleFontSize: 18,
              subTitleFontSize: 14,
              icon: Icons.home,
              iconSize: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            ContactCard(
              theme: _theme,
              subTitle: "(+92) 335-2655824",
              title: "Phone",
              titleFontSize: 18,
              subTitleFontSize: 14,
              iconSize: 30,
              icon: Icons.phone_iphone,
            ),
            const SizedBox(
              height: 10,
            ),
            ContactCard(
              theme: _theme,
              subTitle: "mashoodsidd97@gmail.com",
              title: "Email",
              titleFontSize: 18,
              subTitleFontSize: 14,
              iconSize: 30,
              icon: Icons.email,
            ),
          ],
        ),
      ),
    );
  }
}
