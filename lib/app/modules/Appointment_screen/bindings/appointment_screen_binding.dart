import 'package:get/get.dart';

import '../controllers/appointment_screen_controller.dart';

class AppointmentScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppointmentScreenController>(
      () => AppointmentScreenController(),
    );
  }
}
