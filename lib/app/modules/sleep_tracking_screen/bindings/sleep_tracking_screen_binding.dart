import 'package:get/get.dart';

import '../controllers/sleep_tracking_screen_controller.dart';

class SleepTrackingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SleepTrackingScreenController>(
      () => SleepTrackingScreenController(),
    );
  }
}
