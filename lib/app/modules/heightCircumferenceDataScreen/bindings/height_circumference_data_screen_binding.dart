import 'package:get/get.dart';

import '../controllers/height_circumference_data_screen_controller.dart';

class HeightCircumferenceDataScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HeightCircumferenceDataScreenController>(
      () => HeightCircumferenceDataScreenController(),
    );
  }
}
