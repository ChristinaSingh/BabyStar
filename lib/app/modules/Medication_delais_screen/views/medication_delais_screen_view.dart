import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/colors.dart';
import '../../../common/common_methods.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../controllers/medication_delais_screen_controller.dart';

class MedicationDelaisScreenView
    extends GetView<MedicationDelaisScreenController> {
  const MedicationDelaisScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      appBar: AppBar(
        backgroundColor: primary3Color,
        surfaceTintColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 60.px,
        title: Text(
          'Medication/Supplement Reminder',
          style: MyTextStyle.titleStyle20bb,
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Padding(
              padding: EdgeInsets.only(right: 24.px),
              child: CommonMethods.appIcons(
                assetName: IconConstants.icClose,
                height: 35.px,
                width: 35.px,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.px, vertical: 16.px),
        child: Column(
          children: [
            _profileSection(),
            SizedBox(height: 16),
            _readOnlyField('Medication/Supplement Name', 'Diabetes Medicine'),
            SizedBox(height: 16),
            _dropdownField('Drug Form', controller),
            SizedBox(height: 16),
            _inputField('Single Dose', 'piece', controller.singleDose),
            SizedBox(height: 16),
            _datePickerField('Start Date and Time', controller),
            SizedBox(height: 16),
            _dropdownPeriodType(controller),
            SizedBox(height: 8),
            _lifetimeSwitch(controller),
            SizedBox(height: 16),
            _inputField('For how many weeks?', '', controller.weeks),
            SizedBox(height: 16),
            _inputField(
                'Daily Dose Frequency', '', controller.dailyDoseFrequency),
            SizedBox(height: 24),
            _saveButton(),
          ],
        ),
      ),
    );
  }

  Widget _profileSection() {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://i.pravatar.cc/150?img=1', // <-- Replace with your image URL
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Fatma Sen',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 4),
              Text('37 Year 5 Day', style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _readOnlyField(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        SizedBox(height: 6),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(value, style: TextStyle(color: Colors.grey)),
        ),
      ],
    );
  }

  Widget _dropdownField(
      String title, MedicationDelaisScreenController controller) {
    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            SizedBox(height: 6),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: DropdownButton<String>(
                value: controller.drugForm.value.isEmpty
                    ? null
                    : controller.drugForm.value,
                hint: Text('Choose drug form'),
                underline: SizedBox(),
                isExpanded: true,
                onChanged: (value) {
                  controller.drugForm.value = value!;
                },
                items: ['Tablet', 'Capsule', 'Syrup', 'Injection'].map((e) {
                  return DropdownMenuItem<String>(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
              ),
            ),
          ],
        ));
  }

  Widget _inputField(
      String title, String suffix, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 12),
              suffixText: suffix,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _datePickerField(
      String title, MedicationDelaisScreenController controller) {
    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            SizedBox(height: 6),
            InkWell(
              onTap: controller.pickDateTime,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                width: double.infinity,
                child: Text(
                  controller.startDate.value.isEmpty
                      ? 'Select date'
                      : controller.startDate.value,
                  style: TextStyle(
                      color: controller.startDate.value.isEmpty
                          ? Colors.grey
                          : Colors.black),
                ),
              ),
            ),
          ],
        ));
  }

  Widget _dropdownPeriodType(MedicationDelaisScreenController controller) {
    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Period type'),
            SizedBox(height: 6),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: DropdownButton<String>(
                value: controller.periodType.value.isEmpty
                    ? null
                    : controller.periodType.value,
                hint: Text('Daily'),
                underline: SizedBox(),
                isExpanded: true,
                onChanged: (value) {
                  controller.periodType.value = value!;
                },
                items: ['Daily', 'Weekly', 'Monthly'].map((e) {
                  return DropdownMenuItem<String>(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
              ),
            ),
          ],
        ));
  }

  Widget _lifetimeSwitch(MedicationDelaisScreenController controller) {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Will it be used for a lifetime'),
            Switch(
              value: controller.lifetime.value,
              onChanged: (val) {
                controller.lifetime.value = val;
              },
              activeColor: primaryColor,
            ),
          ],
        ));
  }

  Widget _saveButton() {
    return ElevatedButton(
      onPressed: () {
        // Save your data here
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        minimumSize: Size(double.infinity, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Text('Save',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
    );
  }
}
