import 'package:babystar/app/common/colors.dart';
import 'package:babystar/app/data/constants/icons_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/expert_appointments_screen_controller.dart';

class ExpertAppointmentsScreenView
    extends GetView<ExpertAppointmentsScreenController> {
  const ExpertAppointmentsScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<ExpertAppointmentsScreenController>(
      () => ExpertAppointmentsScreenController(),
    );
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F7FF),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildIconButton(Icons.arrow_back, onPressed: () {
                      Get.back();
                    }),
                    const Text(
                      'Appointments',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2B2B2B),
                      ),
                    ),
                    _buildIconButton(Icons.auto_fix_high_outlined,
                        onPressed: () {
                      // Magic button action
                    }),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const TabBar(
                indicatorColor: Colors.orange,
                labelColor: Colors.orange,
                unselectedLabelColor: Colors.black,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(text: 'Encounters'),
                  Tab(text: 'Requests'),
                  Tab(text: 'Waiting'),
                ],
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            EmptyStateWidget(),
            EmptyStateWidget(),
            EmptyStateWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, {required VoidCallback onPressed}) {
    return Container(
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.3),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon, color: primaryColor),
        onPressed: onPressed,
      ),
    );
  }
}

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            IconConstants.icNoDate, // Replace with your empty state image
            height: 120,
            width: 120,
          ),
        ],
      ),
    );
  }
}
