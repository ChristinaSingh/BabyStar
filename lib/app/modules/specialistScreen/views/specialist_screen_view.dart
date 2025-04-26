import 'package:babystar/app/common/common_widgets.dart';
import 'package:babystar/app/data/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/colors.dart';
import '../../../common/common_methods.dart';
import '../../../common/responsive_size.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../controllers/specialist_screen_controller.dart';

class SpecialistScreenView extends GetView<SpecialistScreenController> {
  const SpecialistScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FF),
      body: Column(
        children: [
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
                      "Specialists",
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
          SizedBox(height:20.px,),
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  const TabBar(
                    indicatorColor: Colors.orange,
                    labelColor: Colors.orange,
                    unselectedLabelColor: Colors.black,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    tabs: [
                      Tab(text: "My Specialists", ),
                      Tab(text: "Search\nSpecialist", ),
                      Tab(text: "Waiting"),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        _buildMySpecialistsTab(),
                        _buildSearchSpecialistTab(),
                        _buildWaitingTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMySpecialistsTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildSearchBar(),
          const SizedBox(height: 40),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
               CommonWidgets.appIcons(assetName: ImageConstants.imgSearch,
               height: 84.px,
                 width: 84.px
               ),
                const SizedBox(height: 12),
                const Text(
                  'No specialists found',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchSpecialistTab() {
    return const Center(child: Text("Search Specialist Content Here"));
  }

  Widget _buildWaitingTab() {
    return const Center(child: Text("Waiting Content Here"));
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search...",
        prefixIcon: const Icon(Icons.search),
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
