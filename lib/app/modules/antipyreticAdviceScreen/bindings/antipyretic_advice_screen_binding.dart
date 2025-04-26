import 'package:get/get.dart';

import '../controllers/antipyretic_advice_screen_controller.dart';

class AntipyreticAdviceScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AntipyreticAdviceScreenController>(
      () => AntipyreticAdviceScreenController(),
    );
  }
}
