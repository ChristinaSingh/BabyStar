import 'package:get/get.dart';

import '../controllers/body_mass_index_screen_controller.dart';

class BodyMassIndexScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BodyMassIndexScreenController>(
      () => BodyMassIndexScreenController(),
    );
  }
}
