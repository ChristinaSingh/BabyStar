import 'package:babystar/app/modules/moreScreen/views/more_screen_view.dart';
import 'package:babystar/app/modules/patientAppointmentListScreen/views/patient_appointment_list_screen_view.dart';
import 'package:babystar/app/modules/patientDashboardScreen/views/patient_dashboard_screen_view.dart';
import 'package:babystar/app/modules/patientFamilyScreen/views/patient_family_screen_view.dart';
import 'package:babystar/app/modules/specialistScreen/views/specialist_screen_view.dart';
import 'package:get/get.dart';

class PatientNavBarController extends GetxController {
  RxInt selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  body() {
    switch (selectedIndex.value) {
      case 0:
        return const PatientDashboardScreenView();
      case 1:
        return const PatientFamilyScreenView();
      case 2:
        return const SpecialistScreenView();
      case 3:
        return const MoreScreenView();
    }
  }

  void increment() => count.value++;
}

//
// import 'package:get/get.dart';
//
// import '../../ai_save_screen/views/ai_save_screen_view.dart';
// import '../../deshboard_screen/views/deshboard_screen_view.dart';
// import '../../home/views/home_view.dart';
// import '../../setting_screen/views/setting_screen_view.dart';
// import '../../wallet_screen/views/wallet_screen_view.dart';
//
// class NavBarScreenController extends GetxController {
//   RxInt selectedIndex = 0.obs;
//
//   void changeIndex(int index) {
//     selectedIndex.value = index;
//   }
//
//   final count = 0.obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//   }
//
//   @override
//   void onReady() {
//     super.onReady();
//   }
//
//   @override
//   void onClose() {
//     super.onClose();
//   }
//
//   body() {
//     switch (selectedIndex.value) {
//       case 0:
//         return const HomeView();
//       case 1:
//         return const AiSaveScreenView();
//       case 2:
//         return const WalletScreenView();
//       case 3:
//         return const DeshboardScreenView();
//       case 4:
//         return const SettingScreenView();
//     }
//   }
//
//   void increment() => count.value++;
// }
