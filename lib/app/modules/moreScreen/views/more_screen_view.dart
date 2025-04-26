import 'package:babystar/app/common/colors.dart';
import 'package:babystar/app/common/common_methods.dart';
import 'package:babystar/app/common/text_styles.dart';
import 'package:babystar/app/data/constants/icons_constant.dart';
import 'package:babystar/app/data/constants/string_constants.dart';
import 'package:babystar/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/common_widgets.dart';
import '../../../common/responsive_size.dart';
import '../../../data/constants/image_constants.dart';
import '../controllers/more_screen_controller.dart';

class MoreScreenView extends GetView<MoreScreenController> {
  const MoreScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myBgColor,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 17.px),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.px),
                      child: CommonWidgets.appIcons(
                        assetName: ImageConstants.imgLogo,
                        height: ResponsiveSize.height(context, 61),
                        width: ResponsiveSize.width(context, 161),
                      ),
                    ),
                    SizedBox(height: 24.px),
                    commonTile(
                      iconString: IconConstants.icBuyTempstar,
                      title: StringConstants.buyTempStar,
                    ),
                    commonTile(
                        iconString: IconConstants.icAdvice,
                        title: StringConstants.antipyreticAdvice,
                        onTap: () {
                          Get.toNamed(Routes.ANTIPYRETIC_ADVICE_SCREEN);
                        }),
                    commonTile(
                        iconString: IconConstants.icHeightCalculation,
                        title: StringConstants.targetHeightCalculation,
                        onTap: () {
                          Get.toNamed(Routes.TARGET_HEIGHT_CALCULATION_SCREEN);
                        }),
                    commonTile(
                        iconString: IconConstants.icHealthMap,
                        title: StringConstants.healthMap,
                        onTap: () {
                          Get.toNamed(Routes.HEALTH_MAP_SCREEN);
                        }),
                    commonTile(
                        iconString: IconConstants.icDate,
                        title: StringConstants.myAppointments,
                        onTap: () {
                          Get.toNamed(Routes.APPOINTMENT_SCREEN);
                        }),
                    commonTile(
                      iconString: IconConstants.icSuscription,
                      title: StringConstants.premiumSubscription,
                    ),
                    commonTile(
                      iconString: IconConstants.icExpertProfile,
                      title: StringConstants.switchToExpertProfile,
                    ),
                    commonTile(
                        iconString: IconConstants.icAssistance,
                        title: StringConstants.assistance,
                        onTap: () {
                          Get.toNamed(Routes.PATIENT_ASSISTANCE_SCREEN);
                        }),
                    commonTile(
                        iconString: IconConstants.icProfile,
                        title: StringConstants.myProfile,
                        onTap: () {
                          Get.toNamed(Routes.MY_PROFILE);
                        }),
                    commonTile(
                        iconString: IconConstants.icLanguage,
                        title: StringConstants.languageSelection,
                        onTap: () {
                          Get.toNamed(Routes.LANGUAGE_SELECTION_SCREEN);
                        }),
                    commonTile(
                      iconString: IconConstants.icLogOut,
                      title: StringConstants.logout,
                      onTap: controller.clickOnLogout,
                    ),
                  ],
                )),
          ),
        ));
  }

  Widget commonTile(
      {required String iconString,
      required String title,
      VoidCallback? onTap}) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 18.px, horizontal: 24.px),
            child: Row(
              children: [
                CommonMethods.appIcons(assetName: iconString),
                SizedBox(width: 16.px),
                Text(title, style: MyTextStyle.titleStyle16bb),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 1,
          height: 1,
          color: Color(0xffF4F4F4),
        ),
      ],
    );
  }
}
