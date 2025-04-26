import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:babystar/app/common/colors.dart';
import 'package:babystar/app/common/common_widgets.dart';
import 'package:babystar/app/common/responsive_size.dart';
import 'package:babystar/app/common/text_styles.dart';
import 'package:babystar/app/data/constants/image_constants.dart';
import 'package:babystar/app/data/constants/string_constants.dart';

import '../controllers/forgot_pass_screen_controller.dart';


class ForgotPassScreenView extends GetView<ForgotPassScreenController> {
  const ForgotPassScreenView({super.key});
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

                /// Email Field
                CommonWidgets.commonTextFieldForLoginSignUP(
                  filled: false,
                  labelText: StringConstants.enterEmail,
                  hintText: StringConstants.emailAddress,
                  fillColor: primary3Color,
                ),



                const SizedBox(height: 40),

                /// Log In Button
                CommonWidgets.commonElevatedButton(
                  onPressed: () {
                    controller.clickOnLogin();
                  },
                  buttonColor: primaryColor,
                  child: Text(
                    StringConstants.logIn,
                    style: MyTextStyle.titleStyle16bw,
                  ),
                ),

                const SizedBox(height: 40),

                /// Sign Up Prompt
                Center(
                  child: Text(
                    StringConstants.dontHaveAccount,
                    style: MyTextStyle.titleStyle14b,
                  ),
                ),

                const SizedBox(height: 20),

                /// Sign Up Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {
                      controller.clickOnSignUp();
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: primaryColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      StringConstants.signUp,
                      style: MyTextStyle.titleStyle16gr,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
