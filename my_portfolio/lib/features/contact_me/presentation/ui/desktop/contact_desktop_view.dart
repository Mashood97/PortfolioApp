import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constant/ui_constant.dart';
import '../../../../../widget/lottie_anim.dart';
import '../../widgets/contact_card.dart';

class ContactDesktopView extends StatelessWidget {
  const ContactDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 3,
          child: LottieAnimationWidget(
            animLocalPath: Get.isDarkMode
                ? AppAssets.contactMeDarkAnim
                : AppAssets.contactMeAnim,
            fit: BoxFit.contain,
          ),
        ),
        const VerticalDivider(thickness: 1, width: 1),
        Expanded(
          flex: 2,
          child: Container(
            // color: Colors.amber.shade400,
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Get in touch",
                  textAlign: TextAlign.center,
                  style: _theme.textTheme.headlineLarge?.copyWith(
                    fontSize: 35,
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
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ContactCard(
                    theme: _theme,
                    subTitle: "Karachi, Pakistan",
                    title: "Location",
                    titleFontSize: 25,
                    subTitleFontSize: 18,
                    icon: Icons.home,
                    iconSize: 50,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ContactCard(
                    theme: _theme,
                    subTitle: "(+92) 335-2655824",
                    title: "Phone",
                    titleFontSize: 25,
                    subTitleFontSize: 18,
                    iconSize: 50,
                    icon: Icons.phone_iphone,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ContactCard(
                    theme: _theme,
                    subTitle: "mashoodsidd97@gmail.com",
                    title: "Email",
                    titleFontSize: 25,
                    subTitleFontSize: 18,
                    iconSize: 50,
                    icon: Icons.email,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
