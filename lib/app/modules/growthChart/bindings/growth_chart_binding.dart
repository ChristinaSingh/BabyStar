import 'package:get/get.dart';

import '../controllers/growth_chart_controller.dart';

class GrowthChartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GrowthChartController>(
      () => GrowthChartController(),
    );
  }
}
