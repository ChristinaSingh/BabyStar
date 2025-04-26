import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/colors.dart';
import '../../../common/common_widgets.dart';
import '../../../common/responsive_size.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/image_constants.dart';
import '../../../data/constants/string_constants.dart';
import '../controllers/register_screen_controller.dart';

class RegisterScreenView extends GetView<RegisterScreenController> {
  const RegisterScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      body: SafeArea(
        child: Obx(() {
          controller.count.value;
          return Padding(
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

                  Text(
                    StringConstants.createAccount,
                    style: MyTextStyle.titleStyle20gr,
                  ),

                  const SizedBox(height: 10),
                  Obx(() {
                    controller.count.value;
                    return Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F4FF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                controller.selectedUserType.value = 'Patient';
                                controller.increment();
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  color: controller.selectedUserType.value ==
                                          'Patient'
                                      ? Colors.white
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Patient',
                                    style: TextStyle(
                                      color:
                                          controller.selectedUserType.value ==
                                                  'Patient'
                                              ? Colors.black
                                              : Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                controller.selectedUserType.value = 'Expert';
                                controller.increment();
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  color: controller.selectedUserType.value ==
                                          'Expert'
                                      ? Colors.white
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Expert',
                                    style: TextStyle(
                                      color:
                                          controller.selectedUserType.value ==
                                                  'Expert'
                                              ? Colors.black
                                              : Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),

                  /// Email Field
                  controller.selectedUserType.value == 'Patient'
                      ? Column(
                          children: [
                            CommonWidgets.commonTextFieldForLoginSignUP(
                              filled: false,
                              labelText: "First Name",
                              controller: controller.nameController,
                              hintText: "Write your first name",
                              fillColor: primary3Color,
                            ),
                            CommonWidgets.commonTextFieldForLoginSignUP(
                              filled: false,
                              labelText: "Last Name",
                              controller: controller.lastNameController,
                              hintText: "Write your last name",
                              fillColor: primary3Color,
                            ),
                            CommonWidgets.commonTextFieldForLoginSignUP(
                              filled: false,
                              labelText: "Phone Number",
                              controller: controller.mobileController,
                              hintText: "+1 XXX XXX XXXX",
                              fillColor: primary3Color,
                            ),
                            CommonWidgets.commonTextFieldForLoginSignUP(
                              filled: false,
                              labelText: "Date of Birth",
                              controller: controller.dobController,
                              hintText: "Select Date",
                              fillColor: primary3Color,
                              readOnly: true,
                              onTap: () {
                                controller.selectDate(context);
                              },
                            ),
                            CommonWidgets.commonTextFieldForLoginSignUP(
                              filled: false,
                              labelText: "E-Mail",
                              controller: controller.emailController,
                              hintText: "Write your email address ",
                              fillColor: primary3Color,
                            ),

                            /// Password Field
                            CommonWidgets.commonTextFieldForLoginSignUP(
                              filled: false,
                              labelText: StringConstants.enterPassword,
                              hintText: StringConstants.passwordSecure,
                              controller: controller.passwordController,
                              fillColor: primary3Color,
                            ),

                            const SizedBox(height: 10),

                            /// Remember Me & Forgot Password
                            Padding(
                              padding: EdgeInsets.only(right: 30.px),
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: true,
                                    onChanged: (value) {},
                                    activeColor: primaryColor,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      // controller.clickOnForgotPassword() ;
                                    },
                                    child: Text(
                                      "I have read the GDPR text and \n I approve.",
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 14,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),

                            /// Remember Me & Forgot Password
                            Row(
                              children: [
                                Checkbox(
                                  value: true,
                                  onChanged: (value) {},
                                  activeColor: primaryColor,
                                ),
                                TextButton(
                                  onPressed: () {
                                    // controller.clickOnForgotPassword() ;
                                  },
                                  child: Text(
                                    "Açık Rıza metni onaylıyorum. ",
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 14,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),

                            /// Remember Me & Forgot Password
                            Row(
                              children: [
                                Checkbox(
                                  value: true,
                                  onChanged: (value) {},
                                  activeColor: primaryColor,
                                ),
                                TextButton(
                                  onPressed: () {
                                    // controller.clickOnForgotPassword() ;
                                  },
                                  child: Text(
                                    "I want to sign up for the newsletter.",
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
                          ],
                        )
                      : Column(
                          children: [
                            CommonWidgets.commonTextFieldForLoginSignUP(
                              filled: false,
                              labelText: "First Name",
                              controller: controller.nameController,
                              hintText: "Write your first name",
                              fillColor: primary3Color,
                            ),
                            CommonWidgets.commonTextFieldForLoginSignUP(
                              filled: false,
                              labelText: "Last Name",
                              controller: controller.lastNameController,
                              hintText: "Write your last name",
                              fillColor: primary3Color,
                            ),
                            CommonWidgets.commonTextFieldForLoginSignUP(
                              filled: false,
                              labelText: "Title",
                              controller: controller.titleController,
                              hintText: "Type here",
                              fillColor: primary3Color,
                            ),
                            CommonWidgets.commonTextFieldDropDownForLoginSignUP(
                              context: context,
                              items: (filter, infiniteScrollProps) {
                                return controller.getExpertiseList
                                    .map((e) => e.type ?? '')
                                    .where((item) => item
                                        .toLowerCase()
                                        .contains(filter.toLowerCase()))
                                    .toList();
                              },
                              onChanged: (value) {
                                controller.clickOnExpertiseField(value: value);
                                controller.increment();
                              },
                              readOnly: true,
                              controller: controller.expertiseAreaController,
                              title: "Expertise area",
                              hintText: StringConstants.choose,
                            ),

                            CommonWidgets.commonTextFieldForLoginSignUP(
                              filled: false,
                              labelText: "Phone Number",
                              controller: controller.mobileController,
                              hintText: "+1 XXX XXX XXXX",
                              fillColor: primary3Color,
                            ),
                            CommonWidgets.commonTextFieldForLoginSignUP(
                              filled: false,
                              labelText: "Date of Birth",
                              controller: controller.dobController,
                              hintText: "Select Date",
                              fillColor: primary3Color,
                              readOnly: true,
                              onTap: () {
                                controller.selectDate(context);
                              },
                            ),
                            CommonWidgets.commonTextFieldForLoginSignUP(
                              filled: false,
                              labelText: "E-Mail",
                              controller: controller.emailController,
                              hintText: "Write your email address ",
                              fillColor: primary3Color,
                            ),

                            /// Password Field
                            CommonWidgets.commonTextFieldForLoginSignUP(
                              filled: false,
                              labelText: StringConstants.enterPassword,
                              hintText: StringConstants.passwordSecure,
                              controller: controller.passwordController,
                              fillColor: primary3Color,
                            ),

                            const SizedBox(height: 10),

                            /// Remember Me & Forgot Password
                            Padding(
                              padding: EdgeInsets.only(right: 30.px),
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: true,
                                    onChanged: (value) {},
                                    activeColor: primaryColor,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      // controller.clickOnForgotPassword() ;
                                    },
                                    child: Text(
                                      "I have read the GDPR text and \n I approve.",
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 14,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),

                            /// Remember Me & Forgot Password
                            Row(
                              children: [
                                Checkbox(
                                  value: true,
                                  onChanged: (value) {},
                                  activeColor: primaryColor,
                                ),
                                TextButton(
                                  onPressed: () {
                                    // controller.clickOnForgotPassword() ;
                                  },
                                  child: Text(
                                    "Açık Rıza metni onaylıyorum. ",
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 14,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),

                            /// Remember Me & Forgot Password
                            Row(
                              children: [
                                Checkbox(
                                  value: true,
                                  onChanged: (value) {},
                                  activeColor: primaryColor,
                                ),
                                TextButton(
                                  onPressed: () {
                                    // controller.clickOnForgotPassword() ;
                                  },
                                  child: Text(
                                    "I want to sign up for the newsletter.",
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
                          ],
                        ),

                  /// Log In Button
                  CommonWidgets.commonElevatedButton(
                      onPressed: () {
                        controller.clickOnSignIn(context);
                      },
                      buttonColor: primaryColor,
                      child: Text(
                        StringConstants.register,
                        style: MyTextStyle.titleStyle16bw,
                      ),
                      showLoading: controller.inAsyncCall.value),

                  const SizedBox(height: 40),

                  /// Sign Up Prompt
                  Center(
                    child: Text(
                      "Already have an account?",
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
                        controller.clickOnLogin();
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: primaryColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        StringConstants.logIn,
                        style: MyTextStyle.titleStyle16gr,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
