import 'package:babystar/app/common/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/new_vaccination_controller.dart';

class NewVaccinationView extends GetView<NewVaccinationController> {
  const NewVaccinationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F8FF),
      body: SafeArea(
        child: Column(
          children: [
            // AppBar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'New Vaccine',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.back(),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFDFEAFF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.close, color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),

            // Profile Card
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/150?img=3'),
                    // Replace with network image or real asset
                    radius: 28,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Fatma Sen',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        Text('37 Year 5 Day',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Icon(Icons.info_outline, color: Colors.grey),
                      SizedBox(height: 4),
                      Text('25°',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 20),

            // Form
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('37 Year 5 Day',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Container(
                          height: 20,
                          width: 2,
                          color: Colors.green,
                          margin: EdgeInsets.only(right: 6),
                        ),
                        Text('37 Year 5 Day',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    SizedBox(height: 20),

                    // Date
                    Text('Date of Vaccination',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.indigo)),
                    Obx(() => ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            controller.selectedDate.value.isEmpty
                                ? 'Select date'
                                : controller.selectedDate.value,
                            style: TextStyle(color: Colors.grey),
                          ),
                          trailing:
                              Icon(Icons.calendar_today, color: Colors.blue),
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2100),
                            );
                            if (pickedDate != null) {
                              controller.pickDate(pickedDate);
                            }
                          },
                        )),
                    SizedBox(height: 10),

                    // Description
                    Text('Description',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.indigo)),
                    TextField(
                      onChanged: controller.setDescription,
                      decoration: InputDecoration(
                        hintText: 'Type here...',
                        border: InputBorder.none,
                      ),
                    ),

                    Spacer(),

                    // Save button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: controller.saveData,
                        child: Text('Save',
                            style:
                                TextStyle(fontSize: 18, color: primary3Color)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
