import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/colors.dart';
import '../../../common/common_methods.dart';
import '../../../common/common_widgets.dart';
import '../../../common/responsive_size.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../../../data/constants/image_constants.dart';
import '../../../data/constants/string_constants.dart';
import '../../../routes/app_pages.dart';
import '../controllers/expert_more_screen_controller.dart';

class ExpertMoreScreenView extends GetView<ExpertMoreScreenController> {
  const ExpertMoreScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<ExpertMoreScreenController>(
      () => ExpertMoreScreenController(),
    );

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
                        iconString: IconConstants.icExpertDashboard,
                        title: StringConstants.dashboard,
                        onTap: () {
                          Get.toNamed(Routes.EXPERT_DASH_BOARD_SCREEN);
                        }),
                    commonTile(
                        iconString: IconConstants.icDate,
                        title: StringConstants.appointments,
                        onTap: () {
                          Get.toNamed(Routes.APPOINTMENT_SCREEN);
                        }),
                    commonTile(
                        iconString: IconConstants.icDucument,
                        title: StringConstants.documents,
                        onTap: () {
                          Get.toNamed(Routes.EXPERT_DOCUMENTS_SCREEN);
                        }),
                    commonTile(
                        iconString: IconConstants.icCalucations,
                        title: StringConstants.percentileCalculation,
                        onTap: () {
                          Get.toNamed(Routes.GENERAL_GROWTH_SCREEN);
                        }),
                    commonTile(
                      iconString: IconConstants.icExpertMaskSmall,
                      title: StringConstants.clients,
                    ),
                    commonTile(
                        iconString: IconConstants.icHealthMap,
                        title: StringConstants.healthMap,
                        onTap: () {
                          Get.toNamed(Routes.HEALTH_MAP_SCREEN);
                        }),
                    commonTile(
                      iconString: IconConstants.icHeightCalculation,
                      title: StringConstants.targetHeightCalculation,
                      onTap: () {
                        Get.toNamed(Routes.TARGET_HEIGHT_CALCULATION_SCREEN);
                      },
                    ),
                    commonTile(
                      iconString: IconConstants.icExpertProfile,
                      title: StringConstants.switchToExpertProfile,
                    ),
                    commonTile(
                        iconString: IconConstants.icAssistance,
                        title: StringConstants.assistance2,
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
