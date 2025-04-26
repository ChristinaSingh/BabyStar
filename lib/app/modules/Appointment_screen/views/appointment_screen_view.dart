import 'package:babystar/app/common/colors.dart';
import 'package:babystar/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/common_methods.dart';
import '../../../data/constants/icons_constant.dart';
import '../controllers/appointment_screen_controller.dart';

class AppointmentScreenView extends GetView<AppointmentScreenController> {
  const AppointmentScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      body: Column(
        children: [

          Container(
            color: primary3Color,
            padding: EdgeInsets.only(bottom:30.px,top:40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 16.px,
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: CommonMethods.appIcons(
                    assetName: IconConstants.icBack,
                    height: 35.px,
                    width: 35.px,
                  ),
                ),
                Spacer(),
                Text("Appointment",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.ADD_APPOINTMENT_SCREEN);
                  },
                  child: CommonMethods.appIcons(
                    assetName: IconConstants.icAdd,
                    height: 35.px,
                    width: 35.px,
                  ),
                ),
                SizedBox(
                  width: 16.px,
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          // Tabs
          Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                tabItem('Accepted', 0, controller),
                SizedBox(width: 20),
                tabItem('Waiting', 1, controller),
              ],
            );
          }),

          const SizedBox(height: 30),

          // Content
          Expanded(
            child: Obx(() {
              return controller.selectedTabIndex.value == 0
                  ? emptyState("Accepted")
                  : emptyState("Waiting");
            }),
          )
        ],
      ),
    );
  }

  Widget tabItem(String title, int index, controller) {
    bool isSelected = controller.selectedTabIndex.value == index;
    return GestureDetector(
      onTap: () => controller.switchTab(index),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.orange : Colors.black87,
            ),
          ),
          if (isSelected)
            Container(
              height: 2,
              width: 50,
              color: Colors.orange,
              margin: EdgeInsets.only(top: 4),
            ),
        ],
      ),
    );
  }

  Widget emptyState(String tab) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.event_note, size: 60, color: Colors.blue.shade100),
          SizedBox(height: 10),
          Text('No $tab Appointments', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
