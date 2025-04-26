import 'package:get/get.dart';

import '../controllers/screen_test_screen_controller.dart';

class ScreenTestScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScreenTestScreenController>(
      () => ScreenTestScreenController(),
    );
  }
}
