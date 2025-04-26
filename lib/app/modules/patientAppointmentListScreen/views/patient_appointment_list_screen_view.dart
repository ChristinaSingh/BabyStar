import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/patient_appointment_list_screen_controller.dart';

class PatientAppointmentListScreenView
    extends GetView<PatientAppointmentListScreenController> {
  const PatientAppointmentListScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PatientAppointmentListScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PatientAppointmentListScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
