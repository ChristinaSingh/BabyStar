import 'package:babystar/app/common/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/common_methods.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../controllers/general_growth_screen_controller.dart';

class GeneralGrowthScreenView extends GetView<GeneralGrowthScreenController> {
  const GeneralGrowthScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      appBar: AppBar(
        backgroundColor: primary3Color,
        automaticallyImplyLeading: false,
        toolbarHeight: 60.px,
        leading: Padding(
          padding: EdgeInsets.only(left: 24.px),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: CommonMethods.appIcons(
              assetName: IconConstants.icBack,
              height: 35.px,
              width: 35.px,
            ),
          ),
        ),
        title: Text(
          'Percentile Calculation',
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
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.px,
            ),
            // Header
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Text(
            //           'Percentile Calculation',
            //           style: TextStyle(
            //             fontSize: 20,
            //             fontWeight: FontWeight.bold,
            //             color: Color(0xFF111827),
            //           ),
            //         ),
            //       ),
            //       GestureDetector(
            //         onTap: () => Get.back(),
            //         child: Container(
            //           decoration: BoxDecoration(
            //             color: Color(0xFFDBEAFE),
            //             shape: BoxShape.circle,
            //           ),
            //           padding: EdgeInsets.all(8),
            //           child: Icon(Icons.close, color: Color(0xFF2563EB)),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            // Body
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      // Profile
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
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
                                Text(
                                  'Fatma Sen',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF111827),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  '37 Year 5 Day',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF9CA3AF),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      // Measurement Date
                      buildInputBox(
                        title: 'Measurement Date',
                        hint: '26/03/2025',
                        enabled: false,
                      ),
                      SizedBox(height: 12),
                      // Height
                      Obx(() {
                        controller.count.value;
                        return buildInputBox(
                          title: 'Height (cm)',
                          hint: '15',
                          onChanged: (val) => controller.height.value = val,
                        );
                      }),
                      SizedBox(height: 12),
                      // Weight
                      Obx(() {
                        controller.count.value;
                        return buildInputBox(
                          title: 'Weight (kg)',
                          hint: '15',
                          onChanged: (val) => controller.weight.value = val,
                        );
                      }),
                      SizedBox(height: 32),
                      // Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // Add your calculate and save logic here
                            Get.snackbar(
                              'Success',
                              'Height: ${controller.height.value} cm, Weight: ${controller.weight.value} kg',
                              snackPosition: SnackPosition.BOTTOM,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF2563EB),
                            padding: EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            'Calculate and Save',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildInputBox({
    required String title,
    required String hint,
    bool enabled = true,
    ValueChanged<String>? onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xFF111827),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        TextField(
          enabled: enabled,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color: Color(0xFF9CA3AF),
              fontSize: 16,
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}
