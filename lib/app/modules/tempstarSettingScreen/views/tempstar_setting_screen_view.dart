import 'package:babystar/app/common/common_widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/colors.dart';
import '../../../common/common_methods.dart';
import '../../../common/responsive_size.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../../../data/constants/string_constants.dart';
import '../controllers/tempstar_setting_screen_controller.dart';

class TempstarSettingScreenView
    extends GetView<TempstarSettingScreenController> {
  const TempstarSettingScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: ResponsiveSize.height(context, 128),
            width: double.maxFinite,
            color: primary3Color,
            padding: EdgeInsets.symmetric(horizontal: 24.px),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: ResponsiveSize.height(context, 30)),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      "TempStar Settings",
                      style: MyTextStyle.titleStyle20bb,
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: (){
                        controller.clickOnBackIcon();
                      },
                      child: CommonMethods.appIcons(
                        assetName: IconConstants.icClose,
                        width: 34.px , height: 34.px
                      ),
                    ),
                  ],
                ),
        
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                CommonWidgets.commonTextFieldForLoginSignUP(
                  filled: false,
                  labelText: "Minimum Body Temperature (°C)",
                  hintText: "35",
                  fillColor: primary3Color,
                ),
                CommonWidgets.commonTextFieldForLoginSignUP(
                  filled: false,
                  labelText: "Maximum Body Temperature (°C)",
                  hintText: "35",
                  fillColor: primary3Color,
                ),
                CommonWidgets.commonTextFieldForLoginSignUP(
                  filled: false,
                  labelText: "Notification Frequency (min)",
                  hintText: "15",
                  fillColor: primary3Color,
                ),
                CommonWidgets.commonTextFieldForLoginSignUP(
                  filled: false,
                  labelText: "Have you placed the TempStar in your armpit?",
                  hintText: "Yes",
                  fillColor: primary3Color,
                ),
              ],
            ),
          ),
        ],),
      ),
    );
  }
}
