import 'package:get/get.dart';

import '../controllers/new_screen_test_controller.dart';

class NewScreenTestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewScreenTestController>(
      () => NewScreenTestController(),
    );
  }
}
