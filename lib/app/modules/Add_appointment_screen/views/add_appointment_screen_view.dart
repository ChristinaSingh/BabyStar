import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_appointment_screen_controller.dart';

class AddAppointmentScreenView extends GetView<AddAppointmentScreenController> {
  const AddAppointmentScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddAppointmentScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AddAppointmentScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
