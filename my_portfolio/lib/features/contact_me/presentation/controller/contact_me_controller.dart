import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import '../../../../utils/responsive/app_responsive.dart';

class ContactMeController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  void resetInputFields() {
    nameController.clear();
    emailController.clear();
    messageController.clear();
  }

  final formKey = GlobalKey<FormState>();

  final RxBool _isDataLoading = false.obs;
  bool get isDataloading => _isDataLoading.value;

  Future sendEmail() async {
    try {
      if (formKey.currentState?.validate() == true) {
        _isDataLoading.value = true;

        await dotenv.load();
        final url = Uri.parse(dotenv.env["url"]!);
        String serviceId = dotenv.env["s_id"]!;
        String templateId = dotenv.env["t_id"]!;
        String userId = dotenv.env["u_id"]!;
        final response = await http.post(url,
            headers: {
              'Content-Type': 'application/json'
            }, //This line makes sure it works for all platforms.
            body: json.encode({
              'service_id': serviceId,
              'template_id': templateId,
              'user_id': userId,
              'template_params': {
                'from_name': nameController.text.toString().trim(),
                'from_email': emailController.text.toString().trim(),
                'message': messageController.text.toString().trim(),
              }
            }));
        log(response.body);
        if (response.statusCode == 200) {
          resetInputFields();
          var snackBar = SnackBar(
            content: Text(
              'Thanks, your message has been sent successfully',
              style: Theme.of(Get.context!).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: AppResponsiveView.isDesktopDevice
                        ? SizeConfig.safeBlockHorizontal! * 1
                        : SizeConfig.safeBlockHorizontal! * 2,
                    color: Colors.white,
                  ),
            ),
            backgroundColor: Colors.green.shade900,
          );
          ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
        } else {
          var snackBar = SnackBar(
            content: Text(
              'We are unable to connect with the service, Please try again later.',
              style: Theme.of(Get.context!).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: AppResponsiveView.isDesktopDevice
                        ? SizeConfig.safeBlockHorizontal! * 1
                        : SizeConfig.safeBlockHorizontal! * 2,
                    color: Colors.white,
                  ),
            ),
            backgroundColor: Colors.red.shade900,
          );
          ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
        }
      } else {
        var snackBar = SnackBar(
          content: Text(
            'Please fill out the complete form',
            style: Theme.of(Get.context!).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: AppResponsiveView.isDesktopDevice
                      ? SizeConfig.safeBlockHorizontal! * 1
                      : SizeConfig.safeBlockHorizontal! * 2,
                  color: Colors.white,
                ),
          ),
          backgroundColor: Colors.red.shade900,
        );
        ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
      }
      _isDataLoading.value = false;
    } catch (e) {
      _isDataLoading.value = false;
      var snackBar = SnackBar(
        content: Text(
          'We are unable to connect with the service, Please try again later.',
          style: Theme.of(Get.context!).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: AppResponsiveView.isDesktopDevice
                    ? SizeConfig.safeBlockHorizontal! * 1
                    : SizeConfig.safeBlockHorizontal! * 2,
                color: Colors.white,
              ),
        ),
        backgroundColor: Colors.red.shade900,
      );
      ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
    }
  }
}
