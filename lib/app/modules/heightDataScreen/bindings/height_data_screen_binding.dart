import 'package:get/get.dart';

import '../controllers/height_data_screen_controller.dart';

class HeightDataScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HeightDataScreenController>(
      () => HeightDataScreenController(),
    );
  }
}
