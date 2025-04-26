import 'package:get/get.dart';

import '../controllers/patient_appointment_list_screen_controller.dart';

class PatientAppointmentListScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PatientAppointmentListScreenController>(
      () => PatientAppointmentListScreenController(),
    );
  }
}
