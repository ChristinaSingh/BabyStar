import 'package:babystar/app/common/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../routes/app_pages.dart';

class MoreScreenController extends GetxController {
  //TODO: Implement MoreScreenController

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void clickOnLogout() {
    Get.dialog(
      AlertDialog(
        content: Text(
          "Are you sure you want to log out from the application?",
          style: MyTextStyle.titleStyle16bb,
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text(
              "NO",
              style: MyTextStyle.titleStyle18gr,
            ),
          ),
          TextButton(
            onPressed: () {
              logout(); // Navigate to login screen
            },
            child: Text(
              "YES",
              style: MyTextStyle.titleStyle18gr,
            ),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }

  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('user_id'); // Remove user user_id
    await prefs.remove('token'); // Remove user token
    await prefs.remove('type'); // Remove user type
    Get.offAllNamed(Routes.LOG_IN_SCREEN);

    print("User logged out successfully.");
  }
}
