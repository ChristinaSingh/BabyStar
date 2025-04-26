import 'package:babystar/app/common/colors.dart';
import 'package:babystar/app/common/common_methods.dart';
import 'package:babystar/app/common/common_widgets.dart';
import 'package:babystar/app/common/text_styles.dart';
import 'package:babystar/app/data/constants/icons_constant.dart';
import 'package:babystar/app/data/constants/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../common/responsive_size.dart';
import '../controllers/antipyretic_advice_screen_controller.dart';

class AntipyreticAdviceScreenView extends GetView<AntipyreticAdviceScreenController> {
  const AntipyreticAdviceScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      body:
      Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 24.px, right: 24.px, top: 50.px),
            color: primary3Color,
            height: 128.px,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  StringConstants.antipyreticAdvice,
                  style: MyTextStyle.titleStyle20bb,
                ),
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
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.px),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 12.px),
                    padding: EdgeInsets.symmetric(horizontal: 16.px, vertical: 12.px),
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade100,
                      borderRadius: BorderRadius.circular(12.px),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.info_outline, color: Colors.orange),
                        SizedBox(width: 10.px),
                        Expanded(
                          child: Text(
                             StringConstants.recommendationText,
                            style: MyTextStyle.titleStyle16bb.copyWith(
                              color: Colors.orange.shade900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.px),

                  // 🌡 Temperature Field
                  _buildLabeledBox(
                    label: 'The actual temperature measured',
                    value: '36.5',
                    subText: 'We do not recommend giving antipyretics before 38 °C',
                  ),
                  SizedBox(height: 16.px),

                  // 🏋️ Weight Field
                  _buildLabeledBox(
                    label: 'Vucudu Ağırlığı (KG)',
                    value: '3',
                    showWarningIcon: true,
                  ),
                  SizedBox(height: 16.px),

                  // ❓ Dropdown Question
                  _buildDropdown(
                    label: 'Were antipyretics given?',
                    hint: 'Yes / No',
                  ),
                  const Spacer(),

                  // 💾 Save Button
               CommonWidgets.commonElevatedButton(onPressed: (){}, child: Text("Save", style: MyTextStyle.titleStyle16bw,)),

                  SizedBox(height: 20.px),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLabeledBox({
    required String label,
    required String value,
    String? subText,
    bool showWarningIcon = false,
  }) {
    return Container(
      padding: EdgeInsets.all(14.px),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.px),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
             style: MyTextStyle.titleStyle16bb,
          ),
          SizedBox(height: 8.px),
          Row(
            children: [
              Expanded(
                child: Text(
                  value,
                  style: MyTextStyle.titleStyle18bb,
                ),
              ),
              if (showWarningIcon)
                const Icon(Icons.error_outline, color: Colors.red),
            ],
          ),
          if (subText != null)
            Padding(
              padding: EdgeInsets.only(top: 4.px),
              child: Text(
                subText,
                style: MyTextStyle.titleStyle14b,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildDropdown({
    required String label,
    required String hint,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.px, vertical: 18.px),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.px),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
             style: MyTextStyle.titleStyle16bb,
          ),
          const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black),
        ],
      ),
    );
  }
}
