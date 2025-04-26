import 'package:get/get.dart';

class RemindersScreenController extends GetxController {
  var currentTabIndex = 0.obs;

  List<String> tabs = ['Today', 'March 26'];

  void previousTab() {
    if (currentTabIndex.value > 0) {
      currentTabIndex.value--;
    }
  }

  void nextTab() {
    if (currentTabIndex.value < tabs.length - 1) {
      currentTabIndex.value++;
    }
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
