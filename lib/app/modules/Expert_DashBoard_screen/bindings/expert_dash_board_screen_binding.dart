import 'package:get/get.dart';

import '../controllers/expert_dash_board_screen_controller.dart';

class ExpertDashBoardScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpertDashBoardScreenController>(
      () => ExpertDashBoardScreenController(),
    );
  }
}
