import 'package:get/get.dart';

import '../controllers/new_sleep_tracking_controller.dart';

class NewSleepTrackingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewSleepTrackingController>(
      () => NewSleepTrackingController(),
    );
  }
}
