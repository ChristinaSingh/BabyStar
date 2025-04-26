import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/colors.dart';
import '../../../common/common_methods.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../controllers/screen_test_card_screen_controller.dart';

class ScreenTestCardScreenView extends GetView<ScreenTestCardScreenController> {
  const ScreenTestCardScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          height: 55,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: controller.save,
            child: Text(
              'Save',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: primary3Color),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Header Row

            Container(
              width: double.maxFinite,
              color: primary3Color,
              padding: EdgeInsets.only(
                  left: 20.px, right: 20.px, top: 50, bottom: 20.px),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Screening Test Card",
                        style: MyTextStyle.titleStyle20bb,
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          controller.clickOnBackIcon();
                        },
                        child: CommonMethods.appIcons(
                            assetName: IconConstants.icClose,
                            width: 34.px,
                            height: 34.px),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            /// Profile Image
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/150?img=1', // <-- Replace with your image URL
                ),
              ),
            ),
            const SizedBox(height: 30),

            /// Test Name Field
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.px),
              child: _buildTextField(
                title: 'Test Name',
                hintText: 'Type here...',
                controller: controller.testNameController,
              ),
            ),
            const SizedBox(height: 20),

            /// Result/Comment Field
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.px),
              child: _buildTextField(
                title: 'Result/Comment',
                hintText: 'Type here...',
                controller: controller.resultCommentController,
                maxLines: 4,
              ),
            ),
            const SizedBox(height: 20),

            /// Date Field
            Obx(() => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.px),
                  child: GestureDetector(
                    onTap: () => controller.pickDate(context),
                    child: AbsorbPointer(
                      child: _buildTextField(
                        title: 'Date',
                        hintText: controller.selectedDate.value != null
                            ? DateFormat('yyyy-MM-dd')
                                .format(controller.selectedDate.value!)
                            : 'Select Date...',
                        controller: TextEditingController(),
                      ),
                    ),
                  ),
                )),
            const SizedBox(height: 40),

            /// Save Button
          ],
        ),
      ),
    );
  }

  /// Reusable TextField
  Widget _buildTextField({
    required String title,
    required String hintText,
    required TextEditingController controller,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.05),
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: TextField(
            controller: controller,
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
