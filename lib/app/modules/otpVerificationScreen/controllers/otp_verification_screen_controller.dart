import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../common/common_widgets.dart';
import '../../../data/apis/api_constants/api_key_constants.dart';
import '../../../data/apis/api_methods/api_methods.dart';
import '../../../data/apis/api_models/simple_response_model.dart';
import '../../../data/constants/string_constants.dart';
import '../../../routes/app_pages.dart';

class OtpVerificationScreenController extends GetxController {
  final count = 0.obs;
  TextEditingController pinController = TextEditingController();
  Map<String, String?> parameters = Get.parameters;
  final showLoading = false.obs;

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
  clickOnVerify() {
    otpVerifyApiCalling();
  }

  clickOnLogin() {
   Get.toNamed(Routes.LOG_IN_SCREEN);
  }

  otpVerifyApiCalling() async {
    if (pinController.text.trim().isNotEmpty) {
      showLoading.value = true;
      Map<String, dynamic> bodyParams = {
        ApiKeyConstants.email: parameters[ApiKeyConstants.email] ?? '',
        ApiKeyConstants.otp: pinController.text.toString(),
      };

      print("Check data :-- ${bodyParams}");
      try {
        SimpleResponseModel? simpleResponseModel =
            await ApiMethods.otpVerify(bodyParams: bodyParams);
        if (simpleResponseModel != null && simpleResponseModel.status != false) {
          Get.toNamed(
            Routes.LOG_IN_SCREEN,
          );
        } else {
          CommonWidgets.showMyToastMessage(simpleResponseModel!.message ?? '');
        }
        showLoading.value = false;
      } catch (e) {
        showLoading.value = false;
        CommonWidgets.showMyToastMessage('Enter correct otp for verification');
      }
    } else {
      showLoading.value = false;
      CommonWidgets.showMyToastMessage(StringConstants.allFieldsRequired);
    }
  }
}
