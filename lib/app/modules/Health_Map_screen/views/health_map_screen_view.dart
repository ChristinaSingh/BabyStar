import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/common_methods.dart';
import '../../../data/constants/icons_constant.dart';
import '../controllers/health_map_screen_controller.dart';

class HealthMapScreenView extends GetView<HealthMapScreenController> {
  const HealthMapScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() => Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Health Map",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      GestureDetector(
                        onTap: (){
                          Get.back();
                        },
                        child: CommonMethods.appIcons(
                          assetName: IconConstants.icClose,
                          height: 35.px,
                          width: 35.px,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Tab Switch
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      tabButton("Add Discomfort", 0),
                      SizedBox(width: 20),
                      tabButton("Map", 1),
                    ],
                  ),
                  SizedBox(height: 20),
                  if (controller.currentTabIndex.value == 0)
                    Expanded(child: addDiscomfortUI())
                  else
                    Expanded(
                        child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:
                            Center(child: Icon(Icons.map_outlined, size: 40)),
                      ),
                    )),
                ],
              ),
            )),
      ),
    );
  }

  Widget tabButton(String title, int index) {
    return GestureDetector(
      onTap: () => controller.changeTab(index),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: controller.currentTabIndex.value == index
                  ? Colors.orange
                  : Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Container(
            height: 2,
            width: controller.currentTabIndex.value == 0 ? 120 : 30,
            color: controller.currentTabIndex.value == index
                ? Colors.orange
                : Colors.transparent,
          ),
        ],
      ),
    );
  }

  Widget addDiscomfortUI() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Symptom Dropdown
          Text("Choose a Symptom or Complaint"),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade100,
            ),
            child: DropdownButton<String>(
              value: controller.selectedSymptom.value,
              isExpanded: true,
              underline: SizedBox(),
              onChanged: (value) {
                if (value != null) controller.selectedSymptom.value = value;
              },
              items: controller.symptoms
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
            ),
          ),
          SizedBox(height: 16),

          // Location field
          Text("Location"),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade100,
            ),
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 8),
                Expanded(child: Text(controller.location.value)),
                GestureDetector(
                  onTap: () => controller.location.value = "",
                  child: Icon(Icons.clear, color: Colors.black54),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),

          // Map view
          Text("Map View"),
          SizedBox(height: 4),
          Text(
              "Review the address location you entered above or select the location on the map."),
          SizedBox(height: 12),
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Icon(Icons.map_outlined, size: 40)),
          ),
          SizedBox(height: 24),

          // Calculate Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: controller.calculate,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text("Calculate", style: TextStyle(fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}
