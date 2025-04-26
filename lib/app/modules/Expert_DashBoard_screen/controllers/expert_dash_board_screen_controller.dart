import 'package:get/get.dart';

class ExpertDashBoardScreenController extends GetxController {

  var appointments = 0.obs;
  var patients = 0.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
