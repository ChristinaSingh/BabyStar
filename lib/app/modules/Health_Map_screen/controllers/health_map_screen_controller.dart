import 'package:get/get.dart';

class HealthMapScreenController extends GetxController {
  var selectedSymptom = 'Headache'.obs;
  var location = 'MVVP+849, Madina Nagar, Azad Q Nagar, Indore, Madhya Pradesh 452001, India'.obs;
  var currentTabIndex = 0.obs;

  final symptoms = ['Headache', 'Fever', 'Cough', 'Body Pain'];

  void changeTab(int index) {
    currentTabIndex.value = index;
  }

  void calculate() {
    // Add your logic here
    Get.snackbar("Calculated", "Your input has been processed.");
  }

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
