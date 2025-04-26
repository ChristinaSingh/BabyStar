import 'package:get/get.dart';

class NewVaccinationController extends GetxController {
  var selectedDate = ''.obs;
  var description = ''.obs;

  void pickDate(DateTime date) {
    selectedDate.value = '${date.year}-${date.month}-${date.day}';
  }

  void setDescription(String text) {
    description.value = text;
  }

  void saveData() {
    // Here you would save or validate the data
    print('Saving Data');
    print('Date: ${selectedDate.value}');
    print('Description: ${description.value}');
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
