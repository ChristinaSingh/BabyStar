import 'package:get/get.dart';

class AppointmentScreenController extends GetxController {

  var selectedTabIndex = 0.obs;

  void switchTab(int index) {
    selectedTabIndex.value = index;
  }

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
}
