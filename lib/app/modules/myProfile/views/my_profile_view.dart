import 'package:babystar/app/common/colors.dart';
import 'package:babystar/app/data/constants/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/common_methods.dart';
import '../../../common/common_widgets.dart';
import '../../../common/responsive_size.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../../../data/constants/image_constants.dart';
import '../controllers/my_profile_controller.dart';

class MyProfileView extends GetView<MyProfileController> {
  const MyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                ImageConstants.imgProfileBg,
                fit: BoxFit.cover,
              ),
            ),
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
                        StringConstants.myProfile,
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
                SizedBox(height: 25.px),
                CommonWidgets.appIcons(
                  assetName: ImageConstants.imgProfile,
                  height: ResponsiveSize.height(context, 145),
                  width: ResponsiveSize.width(context, 145),
                ),
                SizedBox(height: 35.px),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.px),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16.px),
                    decoration: BoxDecoration(
                      color: primary3Color,
                      borderRadius: BorderRadius.circular(10.px),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "fatma sen",
                          style: MyTextStyle.titleStyle16bb,
                        ),
                        Text(
                          "emodanida@gmail.com",
                          style: MyTextStyle.titleStyle16b,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CommonMethods.appIcons(
                              assetName: IconConstants.icPremium,
                            ),
                            SizedBox(width: 8.px),
                            Text(
                              "Premium",
                              style: MyTextStyle.titleStyle14bb.copyWith(
                                color: Color(0xffF9BD5F),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.px),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.px),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12.px),
                    decoration: BoxDecoration(
                      color: primary3Color,
                      borderRadius: BorderRadius.circular(10.px),
                    ),
                    child: Row(
                      children: [
                        CommonMethods.appIcons(
                          assetName: IconConstants.icPhone,
                          width: 45.px,
                          height: 45.px,
                        ),
                        SizedBox(width: 15.px),
                        Text(
                          "+91 98765***123",
                          style: MyTextStyle.titleStyle16bb,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.px),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.px),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12.px),
                    decoration: BoxDecoration(
                      color: primary3Color,
                      borderRadius: BorderRadius.circular(10.px),
                    ),
                    child: Row(
                      children: [
                        CommonMethods.appIcons(
                          assetName: IconConstants.icDob,
                          width: 45.px,
                          height: 45.px,
                        ),
                        SizedBox(width: 15.px),
                        Text(
                          "14/05/1986",
                          style: MyTextStyle.titleStyle16bb,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 35.px),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.px),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Security",
                      style: MyTextStyle.titleStyle16bb,
                    ),
                  ),
                ),
                SizedBox(height: 15.px),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.px),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12.px),
                    decoration: BoxDecoration(
                      color: primary3Color,
                      borderRadius: BorderRadius.circular(10.px),
                    ),
                    child: Row(
                      children: [
                        CommonMethods.appIcons(
                          assetName: IconConstants.icUpdatePassword,
                          width: 45.px,
                          height: 45.px,
                        ),
                        SizedBox(width: 15.px),
                        Text(
                          "Update Password",
                          style: MyTextStyle.titleStyle16bb,
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18.px,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.px),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.px),
                  child:
              CommonWidgets.commonElevatedButton(buttonColor: Color(0xffDD444E),
              onPressed: (){},
                child: Text("Delete My Account", style: MyTextStyle.titleStyle16bw,)
              ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
