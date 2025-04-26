import 'package:babystar/app/routes/app_pages.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common/colors.dart';
import '../controllers/sleep_tracking_screen_controller.dart';

class SleepTrackingScreenView extends GetView<SleepTrackingScreenController> {
  const SleepTrackingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildProfileSection(),
            SizedBox(height: 20),
            _buildTabSection(),
            SizedBox(height: 16),
            _buildDatePickerField(),
            SizedBox(height: 20),
            _buildChartPlaceholder(),
            Spacer(),
            _buildEmptyState(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: primaryColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Get.back(),
      ),
      title: Text('Sleep Tracking', style: TextStyle(color: Colors.white)),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.add, color: Colors.white),
          onPressed: () {
            Get.toNamed(Routes.NEW_SLEEP_TRACKING);
          },
        ),
      ],
    );
  }

  Widget _buildProfileSection() {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            'https://i.pravatar.cc/150?img=1', // <-- Replace with your image URL
          ),
        ),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Fatma Sen',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text('37 Year 5 Day', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }

  Widget _buildTabSection() {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTabItem('Weekly'),
            SizedBox(width: 20),
            _buildTabItem('Daily'),
          ],
        ));
  }

  Widget _buildTabItem(String title) {
    return GestureDetector(
      onTap: () => controller.changeTab(title),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: controller.selectedTab.value == title
                  ? Colors.orange
                  : Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 6),
          Container(
            height: 2,
            width: 40,
            color: controller.selectedTab.value == title
                ? Colors.orange
                : Colors.transparent,
          )
        ],
      ),
    );
  }

  Widget _buildDatePickerField() {
    return Obx(() => TextFormField(
          readOnly: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            suffixIcon: Icon(Icons.calendar_today_outlined),
            hintText: controller.formattedDate,
          ),
          onTap: () async {
            DateTime? picked = await showDatePicker(
              context: Get.context!,
              initialDate: controller.selectedDate.value,
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );
            if (picked != null) {
              controller.pickDate(picked);
            }
          },
        ));
  }

  Widget _buildChartPlaceholder() {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            borderData: FlBorderData(show: false),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: (value, meta) {
                    // x-axis labels (dates)
                    List<String> dates = ['1', '2', '3', '4', '5', '6', '7'];
                    return Text(dates[value.toInt() % dates.length]);
                  },
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                  getTitlesWidget: (value, meta) {
                    return Text('${value.toInt()}h');
                  },
                ),
              ),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
            gridData: FlGridData(show: false),
            barGroups: [
              makeGroupData(0, 7),
              makeGroupData(1, 6),
              makeGroupData(2, 5),
              makeGroupData(3, 8),
              makeGroupData(4, 7),
              makeGroupData(5, 6),
              makeGroupData(6, 7),
            ],
          ),
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, double y) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          width: 16,
          color: primaryColor,
          borderRadius: BorderRadius.circular(6),
        ),
      ],
    );
  }

  Widget _buildEmptyState() {
    return Column(
      children: [
        Icon(Icons.insert_chart_outlined, size: 60, color: primaryColor),
        SizedBox(height: 8),
        Text('No Data Available', style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
