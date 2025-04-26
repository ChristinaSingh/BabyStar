import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class ExpertDocumentsScreenController extends GetxController {
  var documents = <PlatformFile>[].obs;

  void addDocument() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      documents.add(result.files.first);
    }
  }

  void removeDocument(int index) {
    documents.removeAt(index);
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

  void increment() => count.value++;
}
