import 'package:get/get.dart';

class BreasrfeedingNutritionScreenController extends GetxController {
  var selectedType = ''.obs;
  var selectedDate = ''.obs;
  var selectedBreast = ''.obs;
  var pee = false.obs;
  var poop = false.obs;
  var vomiting = ''.obs;

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
