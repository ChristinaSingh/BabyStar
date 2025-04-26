import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/apis/api_constants/api_key_constants.dart';
import '../../../routes/app_pages.dart';

class SplashScreenController extends GetxController {
  SharedPreferences? prefs;

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    manageSession();
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

  void manageSession() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await Future.delayed(const Duration(seconds: 3));
    print("USER ID:::::::::::${prefs.getString(ApiKeyConstants.userId)}");
    print("userType:::::::::::${prefs.getString(ApiKeyConstants.type)}");
    print("userToken:::::::::::${prefs.getString(ApiKeyConstants.token)}");
    if (prefs.getString(ApiKeyConstants.userId) != null) {
      String? userType = prefs.getString(ApiKeyConstants.type);
      if (userType == "Patient") {
        Get.toNamed(Routes.PATIENT_NAV_BAR);
      } else {
        Get.toNamed(Routes.EXPERT_NAV_BAR_SCREEN);
      }
    } else {
      Get.offAndToNamed(Routes.LOG_IN_SCREEN);
    }
  }
}
