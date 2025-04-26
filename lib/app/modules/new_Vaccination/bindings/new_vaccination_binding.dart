import 'package:get/get.dart';

import '../controllers/new_vaccination_controller.dart';

class NewVaccinationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewVaccinationController>(
      () => NewVaccinationController(),
    );
  }
}
