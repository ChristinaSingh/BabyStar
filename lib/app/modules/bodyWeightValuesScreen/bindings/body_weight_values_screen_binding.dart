import 'package:get/get.dart';

import '../controllers/body_weight_values_screen_controller.dart';

class BodyWeightValuesScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BodyWeightValuesScreenController>(
      () => BodyWeightValuesScreenController(),
    );
  }
}
