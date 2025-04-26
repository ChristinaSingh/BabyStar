import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:babystar/app/common/colors.dart';
import 'package:babystar/app/common/common_widgets.dart';
import 'package:babystar/app/common/responsive_size.dart';
import 'package:babystar/app/common/text_styles.dart';
import 'package:babystar/app/data/constants/image_constants.dart';
import 'package:babystar/app/data/constants/string_constants.dart';
import '../controllers/log_in_screen_controller.dart';

class LogInScreenView extends GetView<LogInScreenController> {
  const LogInScreenView({super.key});

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
                  StringConstants.welcomeBack,
                  style: MyTextStyle.titleStyle20gr,
                ),

                const SizedBox(height: 10),

                /// Email Field
                CommonWidgets.commonTextFieldForLoginSignUP(
                    filled: false,
                    labelText: StringConstants.enterEmail,
                    hintText: StringConstants.emailAddress,
                    fillColor: primary3Color,
                    controller: controller.emailController),

                /// Password Field
                CommonWidgets.commonTextFieldForLoginSignUP(
                    filled: false,
                    labelText: StringConstants.enterPassword,
                    hintText: StringConstants.passwordSecure,
                    fillColor: primary3Color,
                    controller: controller.passwordController),

                const SizedBox(height: 10),

                /// Remember Me & Forgot Password
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      activeColor: primaryColor,
                    ),
                    Text(
                      StringConstants.rememberMe,
                      style: MyTextStyle.titleStyle14b,
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        controller.clickOnForgotPassword();
                      },
                      child: Text(
                        StringConstants.forgotPassword,
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                /// Log In Button
                ///
                ///
                ///
                ///
                ///
                Obx(() {
                  controller.count.value;
                  return CommonWidgets.commonElevatedButton(
                      onPressed: () {
                        controller.clickOnLogin();
                      },
                      buttonColor: primaryColor,
                      child: Text(
                        StringConstants.logIn,
                        style: MyTextStyle.titleStyle16bw,
                      ),
                      showLoading: controller.showLoading.value);
                }),

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
