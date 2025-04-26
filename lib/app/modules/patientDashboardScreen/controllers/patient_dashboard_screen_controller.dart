import 'package:babystar/app/common/colors.dart';
import 'package:babystar/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/responsive_size.dart';
import '../../../common/text_styles.dart';

class PatientDashboardScreenController extends GetxController {
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void clickOnTempSetting() {
    Get.toNamed(Routes.TEMPSTAR_SETTING_SCREEN);
  }

  void clickOnGrowthTracking(BuildContext context) {
    Get.toNamed(Routes.GROWTH_CHART);
  }

  // Correct method to open the bottom sheet
  void clickOnVaccination(BuildContext context, int newIndex) {
    print("my Index:::: $newIndex");
    showModalBottomSheet(
      context: context,
      builder: (context) =>
          Container(
            width: double.infinity,
            // Ensures full width
            height: ResponsiveSize.height(context, 400),
            // Keeps your custom height
            color: myBgColor,
            child: Column(
              children: [
                SizedBox(height: 10.px),
                Container(
                  width: 150, // Makes the container take up the full width
                  height: 5,
                  decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(30)),
                ),
                SizedBox(
                  height: 30.px,
                ),
                // Use Expanded to make ListView take up available space
                Expanded(
                  child: ListView.builder(
                    itemCount: 2,
                    shrinkWrap: true,

                    // Prevents ListView from expanding infinitely
                    physics: NeverScrollableScrollPhysics(),
                    // Disables internal scrolling
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                            bottom: 16.px, left: 24.px, right: 24.px),
                        height: ResponsiveSize.height(context, 100),
                        width: double.infinity,
                        padding: EdgeInsets.all(14.px),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.px),
                          color: primary3Color,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                              NetworkImage("https://i.pravatar.cc/150?img=1"),
                            ),
                            SizedBox(width: 15.px),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Fatma Sen",
                                    style: MyTextStyle.titleStyle16bb),
                                Text("37 Year 5 Day",
                                    style: MyTextStyle.titleStyle14b),
                              ],
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {
                                  clickOnItem(newIndex);

                                },
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
    );
  }

  void clickOnItem(int index) {
    switch (index) {
      case 0:
        {
          Get.toNamed(Routes.VACCINATION_SCREEN);
        }
        break;
      case 1:
        {
          Get.toNamed(Routes.SCREEN_TEST_SCREEN);
        }
        break;
      case 3:
        {
          Get.toNamed(Routes.SLEEP_TRACKING_SCREEN);
        }
        break;
      case 4:
        {
          Get.toNamed(Routes.MEDICATION_REMINDER);
        }
        break;
      case 5:
        {
          Get.toNamed(Routes.BREASRFEEDING_NUTRITION_SCREEN);
        }
    }
  }
}