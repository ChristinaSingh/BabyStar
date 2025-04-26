import 'package:get/get.dart';

import '../controllers/expert_documents_screen_controller.dart';

class ExpertDocumentsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpertDocumentsScreenController>(
      () => ExpertDocumentsScreenController(),
    );
  }
}
