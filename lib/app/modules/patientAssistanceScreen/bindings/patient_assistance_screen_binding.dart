import 'package:get/get.dart';

import '../controllers/patient_assistance_screen_controller.dart';

class PatientAssistanceScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PatientAssistanceScreenController>(
      () => PatientAssistanceScreenController(),
    );
  }
}
