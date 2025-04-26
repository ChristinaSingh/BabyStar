import 'package:babystar/app/common/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/common_methods.dart';
import '../../../data/constants/icons_constant.dart';
import '../controllers/reminders_screen_controller.dart';

class RemindersScreenView extends GetView<RemindersScreenController> {
  const RemindersScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: primary3Color,
                padding: EdgeInsets.only(bottom: 30.px, top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 24.px,
                    ),
                    Text("Reminders",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: CommonMethods.appIcons(
                        assetName: IconConstants.icClose,
                        height: 35.px,
                        width: 35.px,
                      ),
                    ),
                    SizedBox(
                      width: 16.px,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F7FE),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Left Arrow
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new, size: 20),
                      onPressed: controller.previousTab,
                    ),

                    // Tabs
                    Obx(() {
                      return Row(
                        children: controller.tabs.asMap().entries.map((entry) {
                          final index = entry.key;
                          final label = entry.value;
                          final isSelected =
                              controller.currentTabIndex.value == index;

                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              children: [
                                Text(
                                  label,
                                  style: TextStyle(
                                    color: isSelected
                                        ? Colors.orange
                                        : Colors.black54,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                if (isSelected)
                                  Container(
                                    height: 2,
                                    width: 40,
                                    color: Colors.orange,
                                  ),
                              ],
                            ),
                          );
                        }).toList(),
                      );
                    }),

                    // Right Arrow
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios, size: 20),
                      onPressed: controller.nextTab,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Your reminder content section
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F7FE),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Center(
                    child: Obx(() => Text(
                          'No reminders for ${controller.tabs[controller.currentTabIndex.value]}',
                          style: const TextStyle(color: Colors.grey),
                        )),
                  ),
                ),
              ),
            ],
          ),

          // Close button (top-right)
        ],
      ),
    );
  }
}
