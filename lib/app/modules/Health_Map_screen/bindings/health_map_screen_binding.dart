import 'package:get/get.dart';

import '../controllers/health_map_screen_controller.dart';

class HealthMapScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HealthMapScreenController>(
      () => HealthMapScreenController(),
    );
  }
}
