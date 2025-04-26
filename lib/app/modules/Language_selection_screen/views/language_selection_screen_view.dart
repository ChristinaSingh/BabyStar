import 'package:babystar/app/common/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/common_methods.dart';
import '../../../data/constants/icons_constant.dart';
import '../../../routes/app_pages.dart';
import '../controllers/language_selection_screen_controller.dart';

class LanguageSelectionScreenView
    extends GetView<LanguageSelectionScreenController> {
  const LanguageSelectionScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(
                      height: 35.px,
                      width: 35.px,
                    ),
                    Spacer(),
                    Text("Usage Preferences",
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: CommonMethods.appIcons(
                        assetName: IconConstants.icClose,
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
              const SizedBox(height: 24),
              Container(
                margin: EdgeInsets.all(20.px),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() => SwitchListTile(
                      title: Text("Do not show my contact information"),
                      value: controller.hideContactInfo.value,
                      onChanged: (value) {
                        controller.hideContactInfo.value = value;
                      },
                      activeColor: primaryColor,
                      inactiveThumbColor: primary2Color,
                      inactiveTrackColor: myBgColor,

                      contentPadding: EdgeInsets.zero,
                    )),
                    const SizedBox(height: 8),
                    Text("Language selection",
                        style: TextStyle(color: Colors.grey.shade600)),
                    Obx(() => DropdownButton<String>(
                      value: controller.selectedLanguage.value,
                      isExpanded: true,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      underline: Container(height: 0),
                      borderRadius: BorderRadius.circular(12),
                      items: controller.languages
                          .map((lang) => DropdownMenuItem<String>(
                        value: lang,
                        child: Text(
                          lang,
                          style: TextStyle(
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                          .toList(),
                      onChanged: (value) {
                        if (value != null) {
                          controller.selectedLanguage.value = value;
                        }
                      },
                    )),
                  ],
                ),
              ),
            ],
          ),

          // Close button (top right)
        ],
      ),
    );
  }
}