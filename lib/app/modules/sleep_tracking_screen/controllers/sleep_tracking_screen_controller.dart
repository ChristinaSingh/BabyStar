import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SleepTrackingScreenController extends GetxController {
  var selectedTab = 'Weekly'.obs;
  var selectedDate = DateTime.now().obs;

  void changeTab(String tab) {
    selectedTab.value = tab;
  }

  void pickDate(DateTime date) {
    selectedDate.value = date;
  }

  String get formattedDate =>
      DateFormat('dd/MM/yyyy').format(selectedDate.value);

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
