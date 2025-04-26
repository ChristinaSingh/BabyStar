import 'package:get/get.dart';

class LanguageSelectionScreenController extends GetxController {
  var hideContactInfo = true.obs;
  var selectedLanguage = 'English'.obs;

  List<String> languages = ['English', 'Spanish', 'Hindi', 'French'];

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

  void increment() => count.value++;
}
