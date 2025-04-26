import 'package:babystar/app/modules/Expert_Appointments_screen/views/expert_appointments_screen_view.dart';
import 'package:babystar/app/modules/Expert_DashBoard_screen/views/expert_dash_board_screen_view.dart';
import 'package:babystar/app/modules/Expert_more_screen/views/expert_more_screen_view.dart';
import 'package:babystar/app/modules/Match_Requests_screen/views/match_requests_screen_view.dart';
import 'package:get/get.dart';

import '../../../common/common_widgets.dart';


final selectedIndex = 0.obs;

class ExpertNavBarScreenController extends GetxController {


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
        return const ExpertDashBoardScreenView();
      case 1:
        return const MatchRequestsScreenView();
      case 2:
        return const ExpertAppointmentsScreenView();
      case 3:
        return const ExpertMoreScreenView();
    }
  }

  onClickBack() {
    CommonWidgets.showAlertDialog(
      title: "Exit App",
      content: "Do you want to Exit from App",
      onPressedYes: () async {
        Get.back();
      },
    );
  }

  void increment() => count.value++;
}
