import 'package:get/get.dart';

import '../controllers/screen_test_card_screen_controller.dart';

class ScreenTestCardScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScreenTestCardScreenController>(
      () => ScreenTestCardScreenController(),
    );
  }
}
