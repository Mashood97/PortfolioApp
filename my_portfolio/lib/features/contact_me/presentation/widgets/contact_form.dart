import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/features/contact_me/presentation/controller/contact_me_controller.dart';
import 'package:my_portfolio/utils/responsive/app_responsive.dart';

class ContactForm extends GetView<ContactMeController> {
  const ContactForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Form(
        key: controller.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 5,
            ),
            Text(
              "Contact me",
              textAlign: TextAlign.start,
              style: _theme.textTheme.headlineLarge?.copyWith(
                fontSize: (AppResponsiveView.isDesktopDevice)
                    ? SizeConfig.safeBlockHorizontal! * 3
                    : SizeConfig.safeBlockHorizontal! * 5,
                fontWeight: FontWeight.w900,
                color: Colors.amber,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 3,
            ),
            TextFormField(
              controller: controller.nameController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value?.isEmpty == true) {
                  return "Please enter your name";
                }
                return null;
              },
              style: _theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
              cursorColor: Get.isDarkMode ? Colors.white : Colors.black,
              decoration: InputDecoration(
                filled: true,
                labelStyle: _theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                labelText: "Enter Name",
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
            SizedBox(
              height: AppResponsiveView.isDesktopDevice
                  ? SizeConfig.blockSizeHorizontal! * 1.75
                  : SizeConfig.blockSizeHorizontal! * 2.5,
            ),
            TextFormField(
              controller: controller.emailController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value?.isEmpty == true) {
                  return "Please enter your email";
                }
                return null;
              },
              style: _theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
              cursorColor: Get.isDarkMode ? Colors.white : Colors.black,
              decoration: InputDecoration(
                filled: true,
                labelStyle: _theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                labelText: "Enter Email",
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
            SizedBox(
              height: AppResponsiveView.isDesktopDevice
                  ? SizeConfig.blockSizeHorizontal! * 1.75
                  : SizeConfig.blockSizeHorizontal! * 2.5,
            ),
            TextFormField(
              controller: controller.messageController,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value?.isEmpty == true) {
                  return "Please enter your message";
                }
                return null;
              },
              maxLines: 6,
              style: _theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
              cursorColor: Get.isDarkMode ? Colors.white : Colors.black,
              decoration: InputDecoration(
                filled: true,
                floatingLabelAlignment: FloatingLabelAlignment.start,
                labelStyle: _theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                alignLabelWithHint: true,
                labelText: "Enter Message",
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
            SizedBox(
              height: AppResponsiveView.isDesktopDevice
                  ? SizeConfig.blockSizeHorizontal! * 1.75
                  : SizeConfig.blockSizeHorizontal! * 2.5,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                height: SizeConfig.safeBlockVertical! * 6.5,
                width: AppResponsiveView.isDesktopDevice
                    ? SizeConfig.safeBlockHorizontal! * 15
                    : SizeConfig.safeBlockHorizontal! * 25,
                child: ElevatedButton(
                  onPressed: () async {
                    await controller.sendEmail();
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.amber,
                    ),
                  ),
                  child: Text(
                    "Send Message",
                    style: _theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: AppResponsiveView.isDesktopDevice
                          ? SizeConfig.safeBlockHorizontal! * 1
                          : SizeConfig.safeBlockHorizontal! * 2,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
