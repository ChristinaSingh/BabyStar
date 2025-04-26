import 'package:get/get.dart';

class TargetHeightCalculationScreenController extends GetxController {
  //TODO: Implement TargetHeightCalculationScreenController
  var selectedGender = 'Choose...'.obs;

  RxDouble fatherHeight = 183.40.obs;
  RxDouble motherHeight = 167.20.obs;
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
  void calculateTargetHeight() {
    // Your calculation logic here
    print("Gender: ${selectedGender.value}");
    print("Father's Height: ${fatherHeight.value}");
    print("Mother's Height: ${motherHeight.value}");
  }
}
