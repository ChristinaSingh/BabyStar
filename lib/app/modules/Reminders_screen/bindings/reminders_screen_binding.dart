import 'package:get/get.dart';

import '../controllers/reminders_screen_controller.dart';

class RemindersScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RemindersScreenController>(
      () => RemindersScreenController(),
    );
  }
}
