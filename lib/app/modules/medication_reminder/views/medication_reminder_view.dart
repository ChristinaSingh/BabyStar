import 'package:babystar/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/colors.dart';
import '../../../common/common_methods.dart';
import '../../../data/constants/icons_constant.dart';
import '../controllers/medication_reminder_controller.dart';

class MedicationReminderView extends GetView<MedicationReminderController> {
  const MedicationReminderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F9FF),
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Example: Add dummy reminder
            Get.back();
          },
        ),
        title: const Text(
          'My Medication/Supplement\nReminder List',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        toolbarHeight: 65,
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () {
              // Example: Add dummy reminder
              Get.toNamed(Routes.MEDICATION_DELAIS_SCREEN);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildUserCard(),
            const SizedBox(height: 20),
            Expanded(
              child: Obx(() {
                if (controller.reminders.isEmpty) {
                  return _buildEmptyState();
                } else {
                  return ListView.builder(
                    itemCount: controller.reminders.length,
                    itemBuilder: (context, index) {
                      final item = controller.reminders[index];
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          title: Text(item),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () => controller.removeReminder(index),
                          ),
                        ),
                      );
                    },
                  );
                }
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://i.pravatar.cc/150?img=1', // <-- Replace with your image URL
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Fatma Sen',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 4),
              Text(
                '37 Year 5 Day',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/medication_svg.svg', // Replace with your empty icon
            width: 100,
            height: 100,
            color: primaryColor,
          ),
          const SizedBox(height: 12),
          Text(
            'No reminders yet',
            style: TextStyle(color: Colors.grey.shade600),
          )
        ],
      ),
    );
  }
}
