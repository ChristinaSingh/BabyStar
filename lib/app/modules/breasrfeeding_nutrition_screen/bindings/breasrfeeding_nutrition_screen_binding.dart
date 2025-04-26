import 'package:get/get.dart';

import '../controllers/breasrfeeding_nutrition_screen_controller.dart';

class BreasrfeedingNutritionScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BreasrfeedingNutritionScreenController>(
      () => BreasrfeedingNutritionScreenController(),
    );
  }
}
