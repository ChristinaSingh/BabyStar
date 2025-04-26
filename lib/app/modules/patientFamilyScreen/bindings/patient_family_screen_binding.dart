import 'package:get/get.dart';

import '../controllers/patient_family_screen_controller.dart';

class PatientFamilyScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PatientFamilyScreenController>(
      () => PatientFamilyScreenController(),
    );
  }
}
