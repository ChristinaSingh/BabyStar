import 'package:get/get.dart';

class MedicationReminderController extends GetxController {
  var reminders = <String>[].obs;

  void addReminder(String reminder) {
    reminders.add(reminder);
  }

  void removeReminder(int index) {
    reminders.removeAt(index);
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

  void clickOnBackIcon() {

  }
}
