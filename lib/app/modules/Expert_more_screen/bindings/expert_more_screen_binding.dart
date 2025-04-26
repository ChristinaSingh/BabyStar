import 'package:get/get.dart';

import '../controllers/expert_more_screen_controller.dart';

class ExpertMoreScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpertMoreScreenController>(
      () => ExpertMoreScreenController(),
    );
  }
}
