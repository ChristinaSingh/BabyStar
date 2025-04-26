import 'package:get/get.dart';

class TempstarSettingScreenController extends GetxController {
  //TODO: Implement TempstarSettingScreenController

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

  void clickOnBackIcon(){
    Get.back();
  }
}
