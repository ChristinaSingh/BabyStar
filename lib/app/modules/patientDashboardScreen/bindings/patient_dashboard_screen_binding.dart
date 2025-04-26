import 'package:get/get.dart';

import '../controllers/patient_dashboard_screen_controller.dart';

class PatientDashboardScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PatientDashboardScreenController>(
      () => PatientDashboardScreenController(),
    );
  }
}
