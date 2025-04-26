import 'package:babystar/app/common/colors.dart';
import 'package:babystar/app/common/common_widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/common_methods.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../../../data/constants/string_constants.dart';
import '../controllers/target_height_calculation_screen_controller.dart';

class TargetHeightCalculationScreenView
    extends GetView<TargetHeightCalculationScreenController> {
  const TargetHeightCalculationScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 24.px, right: 24.px, top: 50.px),
            color: primary3Color,
            height: 128.px,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  StringConstants.targetHeightCalculation,
                  style: MyTextStyle.titleStyle20bb,
                ),
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
              ],
            ),
          ),
          SizedBox(height: 22.px),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.px),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(17.px),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.px),
                    color: primary3Color,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gender",
                        style: MyTextStyle.titleStyle16bb,
                      ),
                      SizedBox(height: 12.px),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            controller.count.value; // just to trigger UI update
                            return Text(
                              controller.selectedGender.value,
                              style: MyTextStyle.titleStyle14b,
                            );
                          }),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    title: Text(
                                      'Select Gender',
                                      style: MyTextStyle.titleStyle16bb,
                                    ),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ListTile(
                                          title: Text('Male'),
                                          onTap: () {
                                            Navigator.pop(context);
                                            controller.selectedGender.value = 'Male';
                                          },
                                        ),
                                        ListTile(
                                          title: Text('Female'),
                                          onTap: () {
                                            Navigator.pop(context);
                                            controller.selectedGender.value = 'Female';
                                          },
                                        ),
                                        ListTile(
                                          title: Text('Other'),
                                          onTap: () {
                                            Navigator.pop(context);
                                            controller.selectedGender.value = 'Other';
                                          },
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                              size: 24.px,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20.px),

                /// Two Text Fields in Row
                Row(
                  children: [
                    Expanded(
                      child: CommonWidgets.commonTextFieldForLoginSignUP(
                        filled: false,
                        labelText: "Father's Height",
                        hintText: "183.40",
                        fillColor: primary3Color,
                      ),
                    ),
                    SizedBox(width: 16.px),
                    Expanded(
                      child: CommonWidgets.commonTextFieldForLoginSignUP(
                        filled: false,
                        labelText: "Mother's Height",
                        hintText: "167.20",
                        style:MyTextStyle.titleStyle16b,
                        fillColor: primary3Color,
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 30.px),
                // 💾 Save Button
                CommonWidgets.commonElevatedButton(onPressed: (){}, child: Text("Calculate", style: MyTextStyle.titleStyle16bw,)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
