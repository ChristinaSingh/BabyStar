import 'package:babystar/app/common/colors.dart';
import 'package:babystar/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/vaccination_screen_controller.dart';

class VaccinationScreenView extends GetView<VaccinationScreenController> {
  const VaccinationScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back, color: Colors.white)),
        title: const Text("Vaccination Card",
            style: TextStyle(color: Colors.white)),
        actions: [
          InkWell(
            onTap: () {
              Get.toNamed(Routes.NEW_VACCINATION);
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(Icons.add, color: Colors.white),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Profile section
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                          'https://i.pravatar.cc/150?img=3'), // Replace with actual image
                    ),
                    const SizedBox(width: 12),
                    Obx(() => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.name.value,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              controller.age.value,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Vaccination list
              ...controller.vaccinationData.map((group) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12),
                    Text(
                      group['title'],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ...List.generate((group['items'] as List).length, (index) {
                      String item = group['items'][index];
                      bool isImportant = controller.isHighlighted(item);

                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                          color: isImportant
                              ? const Color(0xFFFFF1E3)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          title:
                              Text(item, style: const TextStyle(fontSize: 14)),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () {},
                        ),
                      );
                    }),
                  ],
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
