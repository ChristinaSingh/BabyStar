import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/text_styles.dart';
import '../../../routes/app_pages.dart';

class ExpertMoreScreenController extends GetxController {

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
        content:  Text(
          "Are you sure you want to log out from the application?",
          style: MyTextStyle.titleStyle16bb,
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child:  Text("NO",    style: MyTextStyle.titleStyle18gr,),
          ),
          TextButton(
            onPressed: () {
              Get.offAllNamed(Routes.LOG_IN_SCREEN); // Navigate to login screen
            },
            child:  Text("YES" , style: MyTextStyle.titleStyle18gr,),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }

}

