import 'package:get/get.dart';

import '../controllers/vaccination_screen_controller.dart';

class VaccinationScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VaccinationScreenController>(
      () => VaccinationScreenController(),
    );
  }
}
