import 'package:get/get.dart';

import '../controllers/expert_nav_bar_screen_controller.dart';

class ExpertNavBarScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpertNavBarScreenController>(
      () => ExpertNavBarScreenController(),
    );
  }
}
