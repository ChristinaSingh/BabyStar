import 'package:get/get.dart';

import '../controllers/forgot_pass_screen_controller.dart';

class ForgotPassScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPassScreenController>(
      () => ForgotPassScreenController(),
    );
  }
}
