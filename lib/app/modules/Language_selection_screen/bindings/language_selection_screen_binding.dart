import 'package:get/get.dart';

import '../controllers/language_selection_screen_controller.dart';

class LanguageSelectionScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LanguageSelectionScreenController>(
      () => LanguageSelectionScreenController(),
    );
  }
}
