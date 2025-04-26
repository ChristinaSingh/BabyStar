import 'package:babystar/app/common/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/expert_dash_board_screen_controller.dart';

class ExpertDashBoardScreenView
    extends GetView<ExpertDashBoardScreenController> {
  const ExpertDashBoardScreenView({super.key});


  @override
  Widget build(BuildContext context) {
    Get.lazyPut<ExpertDashBoardScreenController>(
          () => ExpertDashBoardScreenController(),
    );

    return Scaffold(
      backgroundColor: myBgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: primary3Color,
        elevation: 0,
        automaticallyImplyLeading: false,
        title:  Text('Hello, Berk', style: TextStyle(color: textColor2,
        fontWeight: FontWeight.w500,
        fontSize: 20.px)),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.orange),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Appointments and Patients cards
            Row(
              children: [
                _buildStatCard(
                  title: "Appointments",
                  count: controller.appointments,
                  borderColor: Colors.orange,
                ),
                const SizedBox(width: 12),
                _buildStatCard(
                  title: "Patients",
                  count: controller.patients,
                  borderColor: Colors.red,
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Blue and Green buttons
            Row(
              children: [
                _buildActionButton(
                  title: "Hedef Boy Hesaplama",
                  color: Colors.blue,
                  icon: Icons.straighten,
                  onTap: () {},
                ),
                const SizedBox(width: 12),
                _buildActionButton(
                  title: "Percentile Hesaplama",
                  color: Colors.green,
                  icon: Icons.calculate,
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Appointment Requests
            _buildEmptySection(title: "Appointment Requests"),
            const SizedBox(height: 16),
            _buildEmptySection(title: "Daily Plan"),
            const SizedBox(height: 16),
            _buildEmptySection(title: "Bekleyen Randevular"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.people_outline), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.child_care_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: ''),
        ],
      ),
    );
  }

  Widget _buildStatCard({required String title, required RxInt count, required Color borderColor}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor, width: 2),
        ),
        child: Column(
          children: [
            Text(title, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Obx(() => Text(
              count.toString(),
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({required String title, required Color color, required IconData icon, required VoidCallback onTap}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 24),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Icon(icon, color: Colors.white, size: 32),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmptySection({required String title}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Icon(Icons.event_note, color: Colors.blue.shade100, size: 48),
          const SizedBox(height: 8),
          const Text('No data found.', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}