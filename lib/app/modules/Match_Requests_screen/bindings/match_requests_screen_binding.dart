import 'package:get/get.dart';

import '../controllers/match_requests_screen_controller.dart';

class MatchRequestsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MatchRequestsScreenController>(
      () => MatchRequestsScreenController(),
    );
  }
}
