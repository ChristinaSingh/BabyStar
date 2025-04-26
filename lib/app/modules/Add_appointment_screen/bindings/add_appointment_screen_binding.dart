import 'package:get/get.dart';

import '../controllers/add_appointment_screen_controller.dart';

class AddAppointmentScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddAppointmentScreenController>(
      () => AddAppointmentScreenController(),
    );
  }
}
