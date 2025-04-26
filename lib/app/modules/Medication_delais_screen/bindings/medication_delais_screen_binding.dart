import 'package:get/get.dart';

import '../controllers/medication_delais_screen_controller.dart';

class MedicationDelaisScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MedicationDelaisScreenController>(
      () => MedicationDelaisScreenController(),
    );
  }
}
