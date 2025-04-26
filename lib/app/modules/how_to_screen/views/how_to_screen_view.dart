import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/colors.dart';
import '../../../common/common_methods.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../controllers/how_to_screen_controller.dart';

class HowToScreenView extends GetView<HowToScreenController> {
  const HowToScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      appBar: AppBar(
        backgroundColor: primary3Color,
        automaticallyImplyLeading: false,
        toolbarHeight: 60.px,
        title: Text(
          'How to interpret percentile charts? ',
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
                      buildInputBox(
                        title:
                            'With these curves, her/his place among 100 similar children is found. ',
                        title2: 'Safe zone is between 3P and 97P. ',
                        title3:
                            'It is expected that its own curve formed during growth will go parallel to the range it has been in from the very beginning. If there are sharp movements in the curves, rising or falling, or jaggedness, you should consult your doctor',
                        hint:
                            'The growth of a healthy baby is monitored with the help of age-appropriate growth curves of height, weight and head circumference. It enables comparison with peers of the same gender. With these curves, the place between 100 similar children is found. The healthy range is between 3P and 97P. The curve formed during growth is expected to go parallel to the range it has been in since the beginning. If there are sharp movements in the curves, rising or falling, or jaggedness, you should consult your doctor.',
                        enabled: false,
                      ),
                      SizedBox(height: 30),
                      // Height
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
    required String title2,
    required String title3,
    required String hint,
    bool enabled = true,
    ValueChanged<String>? onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "",
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
          maxLines: 8,
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
        TextField(
          enabled: enabled,
          onChanged: onChanged,
          maxLines: 2,
          decoration: InputDecoration(
            hintText: title,
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.px),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Safe zone ', style: TextStyle(fontSize: 14)),
                TextSpan(
                    text: 'is between ',
                    style: TextStyle(fontSize: 16, color: primaryColor)),
                TextSpan(text: '3P ', style: TextStyle(fontSize: 14)),
                TextSpan(
                    text: 'and ',
                    style: TextStyle(fontSize: 16, color: primaryColor)),
                TextSpan(text: '97P ', style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
        ),
        TextField(
          enabled: enabled,
          onChanged: onChanged,
          maxLines: 8,
          decoration: InputDecoration(
            hintText: title3,
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
