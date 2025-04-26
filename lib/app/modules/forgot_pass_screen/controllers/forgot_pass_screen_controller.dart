import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class ForgotPassScreenController extends GetxController {


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
  clickOnForgotPassword(){
    Get.toNamed(Routes.OTP_VERIFICATION_SCREEN);
  }

  clickOnSignUp(){
    Get.toNamed(Routes.REGISTER_SCREEN);
  }
  clickOnLogin(){
    Get.toNamed(Routes.OTP_VERIFICATION_SCREEN);
  }

}
