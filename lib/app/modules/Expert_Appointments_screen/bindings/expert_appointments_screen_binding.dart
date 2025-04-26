import 'package:get/get.dart';

import '../controllers/expert_appointments_screen_controller.dart';

class ExpertAppointmentsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpertAppointmentsScreenController>(
      () => ExpertAppointmentsScreenController(),
    );
  }
}
