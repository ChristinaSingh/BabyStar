import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTestCardScreenController extends GetxController {
  final testNameController = TextEditingController();
  final resultCommentController = TextEditingController();
  final selectedDate = Rxn<DateTime>();

  void pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate.value ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      selectedDate.value = picked;
    }
  }

  void save() {
    // Here you can save data
    print('Test Name: ${testNameController.text}');
    print('Result/Comment: ${resultCommentController.text}');
    print('Selected Date: ${selectedDate.value}');
    Get.back(); // close the screen
  }

  @override
  void onClose() {
    testNameController.dispose();
    resultCommentController.dispose();
    super.onClose();
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

  void increment() => count.value++;

  void clickOnBackIcon() {
    Get.back();
  }
}
