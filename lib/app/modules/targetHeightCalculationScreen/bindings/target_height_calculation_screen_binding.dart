import 'package:get/get.dart';

import '../controllers/target_height_calculation_screen_controller.dart';

class TargetHeightCalculationScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TargetHeightCalculationScreenController>(
      () => TargetHeightCalculationScreenController(),
    );
  }
}
