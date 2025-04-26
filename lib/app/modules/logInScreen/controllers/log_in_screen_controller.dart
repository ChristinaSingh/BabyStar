import 'package:babystar/app/common/common_methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/common_widgets.dart';
import '../../../data/apis/api_constants/api_key_constants.dart';
import '../../../data/apis/api_methods/api_methods.dart';
import '../../../data/apis/api_models/get_login_model.dart';
import '../../../data/apis/api_models/simple_response_model.dart';
import '../../../data/constants/string_constants.dart';
import '../../../routes/app_pages.dart';

class LogInScreenController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final showLoading = false.obs;

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

  clickOnForgotPassword() {
    Get.toNamed(Routes.FORGOT_PASS_SCREEN);
  }

  clickOnSignUp() {
    Get.toNamed(Routes.REGISTER_SCREEN);
  }

  clickOnLogin() {
    loginApiCalling();
  }

  loginApiCalling() async {
    if (emailController.text.trim().isNotEmpty &&
        passwordController.text.trim().isNotEmpty) {
      showLoading.value = true;
      CommonMethods.unFocsKeyBoard();
      Map<String, dynamic> bodyParams = {
        ApiKeyConstants.email: emailController.text,
        ApiKeyConstants.password: passwordController.text,
      };

      print("Check data :-- ${bodyParams}");
      try {
        LoginResponseModel? simpleResponseModel =
            await ApiMethods.login(bodyParams: bodyParams);
        if (simpleResponseModel != null &&
            simpleResponseModel.status != false) {
          showLoading.value = false;
          if (simpleResponseModel.data?.type == "Patient") {
            showLoading.value = false;
            SharedPreferences sp = await SharedPreferences.getInstance();
            sp.setString(
                ApiKeyConstants.token, simpleResponseModel.data?.token ?? '');
            sp.setString(ApiKeyConstants.userId,
                simpleResponseModel.data?.pkid.toString() ?? '');
            sp.setString(
                ApiKeyConstants.type, simpleResponseModel.data?.type ?? '');
            Get.toNamed(
              Routes.PATIENT_NAV_BAR,
            );
          } else {
            showLoading.value = false;
            SharedPreferences sp = await SharedPreferences.getInstance();
            sp.setString(
                ApiKeyConstants.token, simpleResponseModel.data?.token ?? '');
            sp.setString(ApiKeyConstants.userId,
                simpleResponseModel.data?.pkid.toString() ?? '');
            sp.setString(
                ApiKeyConstants.type, simpleResponseModel.data?.type ?? '');
            Get.toNamed(
              Routes.EXPERT_NAV_BAR_SCREEN,
            );
          }
        } else {
          CommonWidgets.showMyToastMessage(simpleResponseModel!.message ?? '');
        }
        showLoading.value = false;
      } catch (e) {
        showLoading.value = false;
        CommonWidgets.showMyToastMessage(
            'Enter correct email and password for login');
      }
    } else {
      showLoading.value = false;
      CommonWidgets.showMyToastMessage(StringConstants.allFieldsRequired);
    }
  }
}
