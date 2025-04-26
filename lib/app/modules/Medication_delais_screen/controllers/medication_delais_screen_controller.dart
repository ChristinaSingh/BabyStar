import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MedicationDelaisScreenController extends GetxController {
  var drugForm = ''.obs;
  var singleDose = TextEditingController();
  var startDate = ''.obs;
  var periodType = ''.obs;
  var lifetime = false.obs;
  var weeks = TextEditingController();
  var dailyDoseFrequency = TextEditingController();

  void pickDateTime() async {
    DateTime? picked = await showDatePicker(
      context: Get.context!,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      startDate.value = "${picked.day}.${picked.month}.${picked.year}";
    }
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
