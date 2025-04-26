import 'package:babystar/app/common/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/common_methods.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../controllers/breasrfeeding_nutrition_screen_controller.dart';

class BreasrfeedingNutritionScreenView
    extends GetView<BreasrfeedingNutritionScreenController> {
  const BreasrfeedingNutritionScreenView({super.key});
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
          'Breastfeeding/Nutrition',
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
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
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
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Fatma Sen', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('37 Year 5 Day', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Select Type', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Obx(() => DropdownButtonFormField<String>(
                    value: controller.selectedType.value.isEmpty ? null : controller.selectedType.value,
                    decoration: InputDecoration(
                      hintText: 'I will milk/breastfeed',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    items: [
                      'I will milk',
                      'I will breastfeed'
                    ].map((type) => DropdownMenuItem(value: type, child: Text(type))).toList(),
                    onChanged: (value) {
                      controller.selectedType.value = value ?? '';
                    },
                  )),
                  SizedBox(height: 16),
                  Text('Date', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: () async {
                      DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                      );
                      if (picked != null) {
                        controller.selectedDate.value = picked.toString().split(' ')[0];
                      }
                    },
                    child: Obx(() => Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            controller.selectedDate.value.isEmpty
                                ? 'Choose...'
                                : controller.selectedDate.value,
                            style: TextStyle(color: controller.selectedDate.value.isEmpty ? Colors.grey : Colors.black),
                          ),
                          Icon(Icons.calendar_today, color: Colors.grey),
                        ],
                      ),
                    )),
                  ),
                  SizedBox(height: 16),
                  Text('Please choose breast', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Obx(() => Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => controller.selectedBreast.value = 'Left',
                          style: ElevatedButton.styleFrom(
                            backgroundColor: controller.selectedBreast.value == 'Left'
                                ? primaryColor
                                : Colors.grey.shade200,
                          ),
                          child: Text('Left Breast', style: TextStyle(
                            color: controller.selectedBreast.value == 'Left'
                                ? Colors.white
                                : Colors.black,
                          )),
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => controller.selectedBreast.value = 'Right',
                          style: ElevatedButton.styleFrom(
                            backgroundColor: controller.selectedBreast.value == 'Right'
                                ? primaryColor
                                : Colors.grey.shade200,
                          ),
                          child: Text('Right Breast', style: TextStyle(
                            color: controller.selectedBreast.value == 'Right'
                                ? Colors.white
                                : Colors.black,
                          )),
                        ),
                      ),
                    ],
                  )),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Obx(() => Checkbox(
                        value: controller.pee.value,
                        onChanged: (val) => controller.pee.value = val!,
                        activeColor: primaryColor,
                      )),
                      Text('Pee'),
                      SizedBox(width: 24),
                      Obx(() => Checkbox(
                        value: controller.poop.value,
                        onChanged: (val) => controller.poop.value = val!,
                        activeColor: primaryColor,
                      )),
                      Text('Poop'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text('Vomiting After Feeding', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Obx(() => DropdownButtonFormField<String>(
                    value: controller.vomiting.value.isEmpty ? null : controller.vomiting.value,
                    decoration: InputDecoration(
                      hintText: 'None',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    items: ['None', 'Mild', 'Severe'].map((vomit) => DropdownMenuItem(
                      value: vomit,
                      child: Text(vomit),
                    )).toList(),
                    onChanged: (value) {
                      controller.vomiting.value = value ?? '';
                    },
                  )),
                ],
              ),
            ),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // save logic
                  Get.snackbar('Saved', 'Nutrition info saved successfully!',
                      backgroundColor: primaryColor, colorText: Colors.white);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                ),
                child: Text('Save', style: TextStyle(fontSize: 18, color: primary3Color,
                    fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}