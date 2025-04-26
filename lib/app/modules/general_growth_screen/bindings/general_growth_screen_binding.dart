import 'package:get/get.dart';

import '../controllers/general_growth_screen_controller.dart';

class GeneralGrowthScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GeneralGrowthScreenController>(
      () => GeneralGrowthScreenController(),
    );
  }
}
