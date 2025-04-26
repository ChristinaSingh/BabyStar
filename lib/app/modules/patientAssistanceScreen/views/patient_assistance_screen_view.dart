import 'package:babystar/app/common/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../common/colors.dart';
import '../../../common/common_methods.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../../../data/constants/string_constants.dart';
import '../controllers/patient_assistance_screen_controller.dart';

class PatientAssistanceScreenView extends GetView<PatientAssistanceScreenController> {
  const PatientAssistanceScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 24.px, right: 24.px, top: 50.px),
            color: primary3Color,
            height: 128.px,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  StringConstants.assistance,
                  style: MyTextStyle.titleStyle20bb,
                ),
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
              ],
            ),
          ),
          SizedBox(height: 24.px),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24.px),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.px),
                decoration: BoxDecoration(
                  color: primary3Color,
                  borderRadius: BorderRadius.circular(12.px),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 48.px,
                      decoration: BoxDecoration(
                        color: Color(0xffF2F5FA),
                        borderRadius: BorderRadius.circular(12.px),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.px),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star, color: Colors.blue, size: 18.px),
                                    SizedBox(width: 6.px),
                                    Text(
                                      "Suggestion",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.px,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8.px),
                          Expanded(
                            child: Container(
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.headset, color: Colors.grey, size: 18.px),
                                    SizedBox(width: 6.px),
                                    Text(
                                      "Support",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15.px,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.px),
                    Text(
                      "Title",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.px,
                      ),
                    ),
                    SizedBox(height: 8.px),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter title...",
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Color(0xffF2F5FA),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.px),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 24.px),
                    Text(
                      "Explanation",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.px,
                      ),
                    ),
                    SizedBox(height: 8.px),
                    TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: "Write a description...",
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Color(0xffF2F5FA),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.px),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 32.px),
                   CommonWidgets.commonElevatedButton(onPressed: (){},
                    child: Text("Send", style: MyTextStyle.titleStyle16bw,)
                   ),
                    SizedBox(height: 20.px),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
