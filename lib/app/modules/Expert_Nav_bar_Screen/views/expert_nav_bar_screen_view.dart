import 'package:babystar/app/common/common_methods.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/colors.dart';
import '../../../common/common_widgets.dart';
import '../../../data/constants/icons_constant.dart';
import '../controllers/expert_nav_bar_screen_controller.dart';

class ExpertNavBarScreenView extends GetView<ExpertNavBarScreenController> {
  const ExpertNavBarScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      controller.count.value;
      return WillPopScope(
        onWillPop: () async {
          return await controller.onClickBack();
        },
        child: Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset: false,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: controller.body(),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: primary3Color,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: primaryColor.withOpacity(0.1),
                )
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 18.px, vertical: 15.px),
                child: GNav(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.px, vertical: 4.px),
                  tabs: [
                    button(
                        selectImage: IconConstants.icHomeFill,
                        image: IconConstants.icExpertDashboardUnFill,
                        index: 0),
                    button(
                        selectImage: IconConstants.icHomeFill,
                        image: IconConstants.icExpertGroup,
                        index: 1),
                    button(
                        selectImage: IconConstants.icSettingFill,
                        image: IconConstants.icExpertMask,
                        index: 2),
                    button(
                        selectImage: IconConstants.icHomeFill,
                        image: IconConstants.icExpertMenuTwo,
                        index: 3),
                  ],
                  selectedIndex: selectedIndex.value,
                  onTabChange: (index) {
                    selectedIndex.value = index;
                    controller.increment();
                  },
                ),
              ),
            ),
          ),
        ),
      );
    });
  }

  button({
    required String selectImage,
    required String image,
    required int index,
  }) {
    return GButton(
      icon: Icons.add,
      leading: Column(
        children: [
          CommonMethods.appIcons(
            assetName: image,
            width: 25.px,
            color: selectedIndex.value == index ? secondaryColor : greyColor,
            height: 25.px,
          ),
        ],
      ),
    );
  }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     backgroundColor: primary3Color,
//     body: Obx(() => controller.body()),
//     bottomNavigationBar: Obx(
//           () => Container(
//         // Adds some space around navbar
//             height: 80,
//         padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
//         decoration: BoxDecoration(
//           color: Colors.red,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.1),
//               blurRadius: 10,
//               offset: const Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             _navBarItem(IconConstants.icExpertDashboardUnFill, "", 0),
//             _navBarItem(IconConstants.icExpertGroup, "", 1),
//             _navBarItem(IconConstants.icExpertMask, "", 2),
//             _navBarItem(IconConstants.icExpertMenu, "", 3),
//           ],
//         ),
//       ),
//     ),
//   );
// }
//
// Widget _navBarItem(String assetName, String label, int index) {
//   bool isSelected = controller.selectedIndex.value == index;
//   return GestureDetector(
//     onTap: () => controller.changeIndex(index),
//     child: AnimatedContainer(
//       duration: const Duration(milliseconds: 300),
//       padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
//       decoration: BoxDecoration(
//         //color:  Colors.red,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: CommonMethods.appIcons(
//         assetName: assetName,
//         color:  isSelected ? secondaryColor : Colors.red,
//         height: 35,
//         width: 35,
//       ),
//     ),
//   );
// }
}
