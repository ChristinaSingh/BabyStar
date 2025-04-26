import 'package:get/get.dart';

class VaccinationScreenController extends GetxController {
  final name = "Fatma Sen".obs;
  final age = "37 Year 5 Day".obs;

  final List<Map<String, dynamic>> vaccinationData = [
    {'title': 'Birth', 'items': ['Minimum Body Temperature (°C)']},
    {'title': '1 Month', 'items': ['Hepatitis B 2nd dose']},
    {
      'title': '2 Month',
      'items': [
        'BCG (Tuberculosis) 1st dose',
        'DTaP-Hib-IPV 1st dose',
        'Meningococcal B 1st dose',
        'PCV (Pneumococcal) 1st dose',
        'Rotavirus 1st dose',
      ]
    },
    {
      'title': '4 Month',
      'items': [
        'DTaP-Hib-IPV 2nd dose',
        'Meningococcal B 2nd dose',
        'PCV 2nd dose (Pneumococcal)',
        'Rotavirus 2nd dose / Rotavirus',
      ]
    },
    {
      'title': '6 Month',
      'items': [
        'DTaP-Hib-IPV 3rd dose',
        'Hepatitis B 3rd dose',
        'Oral Polio 1st dose',
        'Meningococcal B 2nd dose',
      ]
    },
    {
      'title': '9 Month',
      'items': ['Meningococcal ACWY 1st dose']
    },
    {
      'title': '12 Month',
      'items': [
        'Measles-Mumps-Rubella 1st dose',
        'Meningococcal ACWY 2nd dose',
        'PCV 3rd dose (Pneumococcal)',
        'Varicella 1st dose',
      ]
    },
    {
      'title': '13 Month',
      'items': ['Meningococcal B 2nd dose']
    },
    {
      'title': '18 Month',
      'items': [
        'DTaP-Hib-IPV 4th dose',
        'Hepatitis A 1st dose',
        'Oral Polio 2nd dose',
      ]
    },
    {
      'title': '24 Month',
      'items': ['Hepatitis A 2nd dose']
    },
    {
      'title': '48 Month',
      'items': [
        'DTaP-Hib-IPV 4th dose',
        'Measles 2nd dose',
        'Varicella 2nd dose',
      ]
    },
    {
      'title': '11 Year',
      'items': [
        'HPV 1st dose - 6 ay sonra di...',
        'Tetanus Booster dose - 1 yıl sonra',
      ]
    },
  ];

  bool isHighlighted(String title) {
    return title.toLowerCase().contains("meningococcal") ||
        title.toLowerCase().contains("hpv");
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
