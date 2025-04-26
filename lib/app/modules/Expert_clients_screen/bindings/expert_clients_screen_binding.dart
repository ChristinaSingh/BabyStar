import 'package:get/get.dart';

import '../controllers/expert_clients_screen_controller.dart';

class ExpertClientsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpertClientsScreenController>(
      () => ExpertClientsScreenController(),
    );
  }
}
