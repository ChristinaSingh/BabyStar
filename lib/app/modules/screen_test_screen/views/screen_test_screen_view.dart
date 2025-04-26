import 'package:babystar/app/common/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../routes/app_pages.dart';
import '../controllers/screen_test_screen_controller.dart';

class ScreenTestScreenView extends GetView<ScreenTestScreenController> {
  const ScreenTestScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgroun.png'), // <-- Your background image
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            // Top Bar
            Container(
              color: primaryColor,
              padding:  EdgeInsets.only(left: 20.px,right: 20.px,top: 40,
              bottom: 20.px),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  const Expanded(
                    child: Text(
                      'Screening Tests',
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                     Get.toNamed(Routes.NEW_SCREEN_TEST);
                    },
                    icon: const Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
            ),

            // User Info
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
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
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '37 Year 5 Day',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // List
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  sectionTitle('Birth'),
                  pinkCard('Minimum Body Temperature (°C)'),
                  pinkCard('1-15.00'),

                  sectionTitle('1 Month'),
                  pinkCard('Heel Blood Test-2'),
                  pinkCard('2-4.001'),
                  pinkCard('Red Reflex (Eye)'),
                  pinkCard('3.-15.00'),
                  pinkCard('Hip Ultrasound'),
                  pinkCard('4-6 Hatto'),

                  sectionTitle('3 Month'),
                  pinkCard('Vision Test'),

                  sectionTitle('6 Month'),
                  pinkCard('Premature Doğumlar İçin'),
                  pinkCard('Doktorun önerisine göre plantanabilir'),
                  pinkCard('Doktorun önerisine göre plantanabilir'),

                  sectionTitle('9 Month'),
                  pinkCard('Hemogram, tliyokimya, Vit\n9. ay ila 12.ay'),

                  sectionTitle('12 Month'),
                  pinkCard('Hemogram, tliyokimya, Vit'),

                  sectionTitle('9 Month'),
                  pinkCard('~12 ay ila 18 ay'),

                  sectionTitle('18 Month'),
                  pinkCard('Doktorun önerisine göre planionabilir'),

                  sectionTitle('48 Month'),
                  pinkCard('1 Yaş Testlerine İave Olarak\nKolestrol ve İnsülin Direnci'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Widget for pink card
  Widget pinkCard(String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.pink.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black54),
        ],
      ),
    );
  }

  // Widget for section title
  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8),
      child: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
      ),
    );
  }
}