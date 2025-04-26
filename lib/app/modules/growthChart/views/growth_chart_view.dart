import 'package:babystar/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/colors.dart';
import '../../../common/common_methods.dart';
import '../../../common/responsive_size.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../controllers/growth_chart_controller.dart';

class GrowthChartView extends GetView<GrowthChartController> {
  const GrowthChartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: ResponsiveSize.height(context, 128),
              width: double.infinity,
              color: headerColor,
              padding: EdgeInsets.symmetric(horizontal: 18.px),
              child: Column(
                children: [
                  SizedBox(height: ResponsiveSize.height(context, 30)),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Growth Chart",
                            style: MyTextStyle.titleStyle20bw,
                          ),
                        ),
                      ),
                      // To balance the space, you can add an invisible IconButton
                      Opacity(
                        opacity: 0,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(24.px),
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
                      Text("Fatma Sen", style: MyTextStyle.titleStyle16bb),
                      Text("37 Year 5 Day", style: MyTextStyle.titleStyle14b),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
            commonWidget(
                context: context,
                containerColor: Color(0xffF33178),
                iconString: IconConstants.icBodyWeight,
                containerText: "Body Weight Growth Curves Chart",
              onTap: () {
                  Get.toNamed(Routes.BODY_WEIGHT_VALUES_SCREEN);
              },
            ),
            SizedBox(height: 20.px,),
            commonWidget(
                context: context,
                containerColor: Color(0xff4671F3),
                iconString: IconConstants.icHeight,
                containerText: "Height Growth Curves Chart",
              onTap: () {
                Get.toNamed(Routes.HEIGHT_DATA_SCREEN);
              },
            ),

            SizedBox(height: 20.px,),
            commonWidget(
                context: context,
                containerColor: Color(0xffFF7A01),
                iconString: IconConstants.icPerson,
                containerText: "Head Circumference Growth Curves Chart",
              onTap: () {
                Get.toNamed(Routes.HEIGHT_CIRCUMFERENCE_DATA_SCREEN);
              },
            ),
            SizedBox(height: 20.px,),
            commonWidget(
                context: context,
                containerColor: Color(0xffFE5900),
                iconString: IconConstants.icHuman,
                containerText: "Body Mass Index Growth Curves Chart",

              onTap: () {
                Get.toNamed(Routes.BODY_MASS_INDEX_SCREEN);
              },),
            SizedBox(height: 20.px,),
            commonWidget(
                context: context,
                containerColor: Color(0xff0CB91F),
                iconString: IconConstants.icCalculator,
                containerText: "General Growth Chart",
              onTap: () {
                Get.toNamed(Routes.GENERAL_GROWTH_SCREEN);
              },
            ),
            SizedBox(height: 20.px,),
            commonWidget(
                context: context,
                containerColor: Color(0xff1890FF),
                iconString: IconConstants.icInformation,
                containerText: "How to interpret percentile curves?",
              onTap: () {
                Get.toNamed(Routes.HOW_TO_SCREEN);
              },
            ),
            SizedBox(height: 20.px,),
          ],
        ),
      ),
    );
  }

  Widget commonWidget({
    required BuildContext context,
    required Color containerColor,
    required String iconString,
    required String containerText,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.px),
        height: ResponsiveSize.height(context, 100),
        width: double.infinity,
        padding: EdgeInsets.all(14.px),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.px),
          color: containerColor,
        ),
        child: Row(
          children: [
            CommonMethods.appIcons(
              assetName: iconString,
              height: 35.px,
              width: 35.px,
            ),
            SizedBox(width: 15.px),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    containerText,
                    style: MyTextStyle.titleStyle14bw,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.px),
            Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: primary3Color,
            ),
          ],
        ),
      ),
    );
  }

}
