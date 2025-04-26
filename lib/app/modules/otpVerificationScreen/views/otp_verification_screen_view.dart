import 'package:babystar/app/common/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common/common_widgets.dart';
import '../../../common/responsive_size.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/image_constants.dart';
import '../../../data/constants/string_constants.dart';
import '../controllers/otp_verification_screen_controller.dart';

class OtpVerificationScreenView
    extends GetView<OtpVerificationScreenController> {
  const OtpVerificationScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f8ff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Language Text
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    StringConstants.english,
                    style: MyTextStyle.titleStyle16gr,
                  ),
                ),

                const SizedBox(height: 40),

                /// Logo
                Center(
                  child: CommonWidgets.appIcons(
                    assetName: ImageConstants.imgBabyStarLog,
                    height: ResponsiveSize.height(context, 114),
                    width: ResponsiveSize.width(context, 114),
                  ),
                ),

                const SizedBox(height: 30),

                /// Welcome Text
                Text(
                  StringConstants.verifyYourAccount,
                  style: MyTextStyle.titleStyle22gr,
                ),

                const SizedBox(height: 10),
                Text(
                  StringConstants.verificationCodeString,
                  style: MyTextStyle.titleStyle14b,
                ),
                const SizedBox(height: 20),
                CommonWidgets.commonTextFieldForLoginSignUP(
                  filled: false,
                  labelText: StringConstants.enterVerificationCode,
                  hintText: "123456",
                  controller: controller.pinController,
                  fillColor: primary3Color,
                ),

                const SizedBox(height: 40),

                /// Log In Button
                ///
                Obx(() {
                  controller.count.value;
                  return CommonWidgets.commonElevatedButton(
                      onPressed: () {
                        controller.clickOnVerify();
                      },
                      buttonColor: primaryColor,
                      child: Text(
                        StringConstants.verify,
                        style: MyTextStyle.titleStyle16bw,
                      ),
                      showLoading: controller.showLoading.value);
                }),

                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      controller.clickOnLogin();
                    },
                    child: Text(
                      StringConstants.logIn,
                      style: MyTextStyle.titleStyle16gr,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
