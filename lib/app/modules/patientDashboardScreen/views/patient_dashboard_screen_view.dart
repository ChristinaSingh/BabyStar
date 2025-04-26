import 'package:babystar/app/common/colors.dart';
import 'package:babystar/app/common/common_methods.dart';
import 'package:babystar/app/common/text_styles.dart';
import 'package:babystar/app/data/constants/icons_constant.dart';
import 'package:babystar/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/common_widgets.dart';
import '../../../common/responsive_size.dart';
import '../../../data/constants/image_constants.dart';
import '../controllers/patient_dashboard_screen_controller.dart';

class PatientDashboardScreenView
    extends GetView<PatientDashboardScreenController> {
  const PatientDashboardScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      body: SingleChildScrollView(
        child: Obx(
          () {
            controller.count.value;
            return Column(
              children: [
                // 🔹 Header
                Container(
                  height: ResponsiveSize.height(context, 128),
                  width: double.maxFinite,
                  color: headerColor,
                  padding: EdgeInsets.symmetric(horizontal: 24.px),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: ResponsiveSize.height(context, 30)),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Text(
                            "Hello , Fatma",
                            style: MyTextStyle.titleStyle20bw,
                          ),
                          const Spacer(),
                          CommonMethods.appIcons(
                            assetName: IconConstants.icNotification,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13.px),

                // 🔹 TempStar Box
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      Container(
                        height: ResponsiveSize.height(context, 200),
                        width: double.maxFinite,
                        padding: EdgeInsets.all(18.px),
                        decoration: BoxDecoration(
                            color: primary3Color,
                            borderRadius: BorderRadius.circular(10.px)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CommonWidgets.appIcons(
                                  assetName: ImageConstants.imgTempStarLogo,
                                  height: ResponsiveSize.height(context, 40),
                                  width: ResponsiveSize.width(context, 128),
                                ),
                                Spacer(),
                                CommonWidgets.appIcons(
                                  assetName: ImageConstants.imgBluetooth,
                                  height: ResponsiveSize.height(context, 26),
                                  width: ResponsiveSize.width(context, 26),
                                ),
                                SizedBox(width: 10.px),
                                CommonWidgets.appIcons(
                                  assetName: ImageConstants.imgInfo,
                                  height: ResponsiveSize.height(context, 26),
                                  width: ResponsiveSize.width(context, 26),
                                ),
                              ],
                            ),
                            Text("..."),
                            Row(
                              children: [
                                MediaQuery.sizeOf(context).width >= 300
                                    ? Text(
                                        "Current body temperature",
                                        style: MyTextStyle.titleStyle10b,
                                      )
                                    : Text(
                                        "Current body temperature",
                                        style: MyTextStyle.titleStyle14b,
                                      ),
                                Spacer(),
                                CommonMethods.appIcons(
                                    assetName: IconConstants.icGrowth,
                                    height: 35.px,
                                    width: 35.px),
                                SizedBox(width: 10.px),
                                GestureDetector(
                                  onTap: () {
                                    controller.clickOnTempSetting();
                                  },
                                  child: CommonMethods.appIcons(
                                      assetName: IconConstants.icSetting,
                                      height: 35.px,
                                      width: 35.px),
                                ),
                                SizedBox(width: 10.px),
                                CommonMethods.appIcons(
                                    assetName: IconConstants.icOff,
                                    height: 35.px,
                                    width: 35.px),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // 🔹 Grid Buttons
                      GridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 3,
                        mainAxisSpacing: 14.px,
                        crossAxisSpacing: 14.px,
                        childAspectRatio: 1,
                        children: [
                          _dashboardTile(
                              "Vaccination",
                              0,
                              IconConstants.icVaccination,
                              Color(0xffF33178),
                              controller.clickOnVaccination),
                          _dashboardTile(
                              "Screening\nTests",
                              1,
                              IconConstants.icScreening,
                              Color(0xff4671F3),
                              controller.clickOnVaccination),
                          _dashboardTile(
                              "Growth\nTracking",
                              2,
                              IconConstants.icGrowthTracking,
                              Color(0xff5CC066),
                              controller.clickOnGrowthTracking),
                          _dashboardTile(
                              "Sleep\nTracking",
                              3,
                              IconConstants.icSleepTracking,
                              Color(0xff220E53),
                              controller.clickOnVaccination),
                          _dashboardTile(
                              "Medication\nReminder",
                              4,
                              IconConstants.icMedicationReminder,
                              Color(0xffDA3436),
                              controller.clickOnVaccination),
                          _dashboardTile(
                              "Breastfeeding\nNutrition",
                              5,
                              IconConstants.icBreastFeedingNutrition,
                              Color(0xffFF7A01),
                              controller.clickOnVaccination),
                        ],
                      ),
                      SizedBox(height: 20.px),

                      // 🔹 Reminders Section
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.REMINDERS_SCREEN);
                        },
                        child: Container(
                          height: 55.px,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.px),
                              color: Colors.white,
                              border: Border.all(
                                  width: 2, color: Color(0xffE1E8FA))),
                          padding: EdgeInsets.symmetric(horizontal: 12.px),
                          child: Row(
                            children: [
                              CommonWidgets.appIcons(
                                assetName: ImageConstants.imgReminder,
                                height: ResponsiveSize.height(context, 40),
                                width: ResponsiveSize.width(context, 40),
                              ),
                              SizedBox(width: 10.px),
                              Text("Reminders",
                                  style: MyTextStyle.titleStyle16bb),
                              Spacer(),
                              Container(
                                height: 32.px,
                                width: 32.px,
                                decoration: BoxDecoration(
                                    color: Color(0xff0ccddff),
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text(
                                    "0",
                                    style: MyTextStyle.titleStyle16bb,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.px,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 20,
                                color: Color(0xff272D45),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.px),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Upcoming",
                              style: MyTextStyle.titleStyle20bb)),
                      CommonWidgets.appIcons(
                        assetName: ImageConstants.imgCalendar,
                        height: ResponsiveSize.height(context, 84),
                        width: ResponsiveSize.width(context, 84),
                      ),
                      SizedBox(height: 100.px),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  // 🔹 Helper for creating each grid tile
  Widget _dashboardTile(String label, int index, String assetName, Color color,
      Function callback) {
    return GestureDetector(
      onTap: () {
        if (index == 2) {
          callback(Get.context!);
        } else {
          callback(Get.context!, index);
        }
        // Make sure the context is passed here
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.px),
        ),
        padding: EdgeInsets.all(5.px),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonMethods.appIcons(assetName: assetName),
            SizedBox(height: 10.px),
            Text(
              label,
              textAlign: TextAlign.center,
              style: MyTextStyle.titleStyle12w.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
