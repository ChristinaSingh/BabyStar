import 'package:get/get.dart';

import '../controllers/specialist_screen_controller.dart';

class SpecialistScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpecialistScreenController>(
      () => SpecialistScreenController(),
    );
  }
}
