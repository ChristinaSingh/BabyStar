import 'package:babystar/app/data/constants/icons_constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common/colors.dart';
import '../../../common/common_widgets.dart';
import '../controllers/patient_nav_bar_controller.dart';

class PatientNavBarView extends GetView<PatientNavBarController> {
  const PatientNavBarView({super.key});
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: primary3Color,
        body: Obx(() => controller.body()),
        bottomNavigationBar: Obx(
              () => Container(
            // Adds some space around navbar
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            decoration: BoxDecoration(
              color: primary3Color,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _navBarItem(IconConstants.icPatientDashboard, "", 0),
                _navBarItem(IconConstants.icPatientFamily, "", 1),
                _navBarItem(IconConstants.icSpecialist, "", 2),
                _navBarItem(IconConstants.icMenu, "", 3),
              ],
            ),
          ),
        ),
      );
  }
  Widget _navBarItem(String assetName, String label, int index) {
    bool isSelected = controller.selectedIndex.value == index;
    return GestureDetector(
      onTap: () => controller.changeIndex(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFE0EBFF) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: CommonWidgets.appIcons(
          assetName: assetName,
          height: 35,
          width: 35,
        ),
      ),
    );
  }


}
