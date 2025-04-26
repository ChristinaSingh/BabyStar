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
import '../controllers/patient_family_screen_controller.dart';

class PatientFamilyScreenView extends GetView<PatientFamilyScreenController> {
  const PatientFamilyScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      body: SingleChildScrollView(
        child: Column(
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
                        "Family Member",
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

            SizedBox(height: 31.px),

            CommonWidgets.appIcons(
              assetName: ImageConstants.imgFamily,
              height: ResponsiveSize.height(context, 175),
              width: ResponsiveSize.width(context, 235),
            ),

            SizedBox(height: 18.px),

            Container(
              height: ResponsiveSize.height(context, 60),
              width: ResponsiveSize.width(context, 235),
              decoration: BoxDecoration(
                border: Border.all(width: 1.5.px, color: headerColor),
                borderRadius: BorderRadius.circular(15.px),
              ),
              child: Center(
                child: Text(
                  "Add New",
                  style: MyTextStyle.titleStyle16gr,
                ),
              ),
            ),

            SizedBox(height: 24.px),

            // 🔹 Family Members List
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.px),
              child: ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                // 👈 important
                physics: NeverScrollableScrollPhysics(),
                // 👈 disables internal scrolling
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.only(bottom: 16.px),
                      height: ResponsiveSize.height(context, 100),
                      width: double.infinity,
                      padding: EdgeInsets.all(14.px),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.px),
                        color: primary3Color,
                      ),
                      child: Row(
                        children: [
                          index == 0
                              ? CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      "https://i.pravatar.cc/150?img=1"),
                                )
                              : CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      "https://i.pravatar.cc/150?img=2"),
                                ),
                          SizedBox(
                            width: 15.px,
                          ),
                          index == 0
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "devid warner",
                                      style: MyTextStyle.titleStyle16bb,
                                    ),
                                    Text(
                                      "40 Year 5 Day ",
                                      style: MyTextStyle.titleStyle14b,
                                    )
                                  ],
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Fatma Sen",
                                      style: MyTextStyle.titleStyle16bb,
                                    ),
                                    Text(
                                      "37 Year 5 Day ",
                                      style: MyTextStyle.titleStyle14b,
                                    )
                                  ],
                                )
                        ],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
