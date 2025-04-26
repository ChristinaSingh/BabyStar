import 'package:babystar/app/common/colors.dart';
import 'package:babystar/app/common/common_methods.dart';
import 'package:babystar/app/common/text_styles.dart';
import 'package:babystar/app/data/constants/icons_constant.dart';
import 'package:babystar/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/responsive_size.dart';
import '../controllers/body_weight_values_screen_controller.dart';

class BodyWeightValuesScreenView
    extends GetView<BodyWeightValuesScreenController> {
  const BodyWeightValuesScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myBgColor,
        appBar: AppBar(
          backgroundColor: primary3Color,
          automaticallyImplyLeading: false,
          toolbarHeight: 60.px,
          leading: Padding(
            padding: EdgeInsets.only(left: 24.px),
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: CommonMethods.appIcons(
                assetName: IconConstants.icBack,
                height: 35.px,
                width: 35.px,
              ),
            ),
          ),
          title: Text(
            'Body Weight Values',
            style: MyTextStyle.titleStyle20bb,
          ),
          centerTitle: true,
          actions: [
            InkWell(
              onTap: () {
                Get.toNamed(Routes.BODY_WEIGHT_VALUES_SCREEN);
              },
              child: Padding(
                padding: EdgeInsets.only(right: 24.px),
                child: CommonMethods.appIcons(
                  assetName: IconConstants.icAddFilled,
                  height: 35.px,
                  width: 35.px,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(children: [
                  Container(
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
                          radius: 40,
                          backgroundImage: NetworkImage(
                            'https://i.pravatar.cc/150?img=1', // <-- Replace with your image URL
                          ),
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.px,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     CommonMethods.appIcons(
                  //         assetName: IconConstants.icNoDate,
                  //         height: 84.px,
                  //         width: 84.px),Head
                  //   ],
                  // ),

                  Column(
                    children: [
                      const SizedBox(height: 16),
                      // Body weight card
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Body weight (kg)',
                              style: TextStyle(
                                color: Color(0xFF1D1E2C),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              '| 15 Kg',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 24),
                            const Text(
                              'Date',
                              style: TextStyle(
                                color: Color(0xFF1D1E2C),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 8),
                            GestureDetector(
                              onTap: () {
                                // Pick date logic here
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey.shade300),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      'Enter date of measurement',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Icon(Icons.calendar_month_outlined,
                                        color: primaryColor),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Delete and Save buttons
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {
                                // Delete logic
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.red),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 16),
                              ),
                              child: const Text(
                                'Delete',
                                style: TextStyle(color: Colors.red, fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                // Save logic
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 16),
                              ),
                              child: const Text(
                                'Save',
                                style:
                                    TextStyle(fontSize: 16, color: primary3Color),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),



                ]))));
  }
}
