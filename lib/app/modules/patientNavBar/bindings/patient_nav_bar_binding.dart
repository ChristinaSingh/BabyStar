import 'package:babystar/app/modules/moreScreen/controllers/more_screen_controller.dart';
import 'package:babystar/app/modules/patientDashboardScreen/controllers/patient_dashboard_screen_controller.dart';
import 'package:babystar/app/modules/patientDashboardScreen/views/patient_dashboard_screen_view.dart';
import 'package:babystar/app/modules/patientFamilyScreen/controllers/patient_family_screen_controller.dart';
import 'package:babystar/app/modules/patientFamilyScreen/views/patient_family_screen_view.dart';
import 'package:babystar/app/modules/specialistScreen/controllers/specialist_screen_controller.dart';
import 'package:get/get.dart';

import '../controllers/patient_nav_bar_controller.dart';

class PatientNavBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PatientNavBarController>(
      () => PatientNavBarController(),
    );
    Get.lazyPut<PatientDashboardScreenController>(
          () => PatientDashboardScreenController(),
    );
    Get.lazyPut<PatientFamilyScreenController>(
          () => PatientFamilyScreenController(),
    );
    Get.lazyPut<SpecialistScreenController>(
          () => SpecialistScreenController(),
    );
    Get.lazyPut<MoreScreenController>(
          () => MoreScreenController(),
    );
  }
}
