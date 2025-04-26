import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/expert_clients_screen_controller.dart';

class ExpertClientsScreenView extends GetView<ExpertClientsScreenController> {
  const ExpertClientsScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpertClientsScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ExpertClientsScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
