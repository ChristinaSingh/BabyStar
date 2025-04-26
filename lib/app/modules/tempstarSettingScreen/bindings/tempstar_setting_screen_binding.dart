import 'package:get/get.dart';

import '../controllers/tempstar_setting_screen_controller.dart';

class TempstarSettingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TempstarSettingScreenController>(
      () => TempstarSettingScreenController(),
    );
  }
}
