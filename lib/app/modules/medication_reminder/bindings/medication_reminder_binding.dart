import 'package:get/get.dart';

import '../controllers/medication_reminder_controller.dart';

class MedicationReminderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MedicationReminderController>(
      () => MedicationReminderController(),
    );
  }
}
