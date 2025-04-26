import 'package:babystar/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../common/common_widgets.dart';
import '../../../data/apis/api_constants/api_key_constants.dart';
import '../../../data/apis/api_methods/api_methods.dart';
import '../../../data/apis/api_models/get_all_experties_Model.dart';
import '../../../data/apis/api_models/simple_response_model.dart';
import '../../../data/constants/string_constants.dart';

class RegisterScreenController extends GetxController {
  RxString selectedUserType = 'Patient'.obs;
  RxInt expertiseAreaId = 0.obs;
  final inAsyncCall = true.obs;
  final count = 0.obs;

  List<Experties> getExpertiseList = [];

  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController expertiseAreaController = TextEditingController();

  FocusNode focusNodePassword = FocusNode();
  FocusNode focusNodeRefer = FocusNode();
  FocusNode focusNodeName = FocusNode();
  FocusNode focusNodeLstName = FocusNode();
  FocusNode focusNodeEmail = FocusNode();
  FocusNode focusMobile = FocusNode();
  FocusNode focusCountry = FocusNode();

  final isPassword = false.obs;
  final isMobile = false.obs;
  final isName = false.obs;
  final isLastName = false.obs;
  final isRefer = false.obs;
  final isEmail = false.obs;
  final isCountry = false.obs;
  final isCheck = false.obs;
  final isHide = true.obs;
  final countryDailCode = '+91'.obs;

  final tabIndex = 0.obs;
  final showLoading = false.obs;
  Map<String, String> bodyParamsForSend = {};

  void startListener() {
    focusNodePassword.addListener(onFocusChange);
    focusNodeName.addListener(onFocusChange);
    focusNodeLstName.addListener(onFocusChange);
    focusNodeEmail.addListener(onFocusChange);
    focusMobile.addListener(onFocusChange);
    focusCountry.addListener(onFocusChange);
    focusNodeRefer.addListener(onFocusChange);
  }

  void onFocusChange() {
    isPassword.value = focusNodePassword.hasFocus;
    isName.value = focusNodeName.hasFocus;
    isLastName.value = focusNodeLstName.hasFocus;
    isEmail.value = focusNodeEmail.hasFocus;
    isMobile.value = focusMobile.hasFocus;
    isCountry.value = focusCountry.hasFocus;
    isRefer.value = focusNodeRefer.hasFocus;
  }

  @override
  void onInit() {
    super.onInit();
    getExpertiseApi();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      lastDate: DateTime.now(),
      initialDate: DateTime(2000),
      // Set a more reasonable default date
      firstDate: DateTime(1940),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.blue, // Header background color
            hintColor: Colors.blue, // Selected date circle color
            colorScheme: ColorScheme.light(
              primary: Colors.blue, // Selection color
              onPrimary: Colors.white, // Text color on selected date
              onSurface: Colors.black, // Default text color
            ),
            dialogBackgroundColor:
                Colors.white, // Background color of the picker
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      String formattedDate = DateFormat('dd/MM/yyyy').format(picked);
      print("Selected date: $formattedDate");
      dobController.text = formattedDate;
    }
  }

  Future<void> getExpertiseApi() async {
    GetExpertiseAreaModel? getExpertiseAreaModel =
        await ApiMethods.getExpertiseArea();
    getExpertiseList.clear();
    if (getExpertiseAreaModel?.status == true) {
      getExpertiseList = getExpertiseAreaModel!.experties ?? [];
      print("status Ok Booking:------  ${getExpertiseList.first.type ?? ' '}");
      inAsyncCall.value = false;
      increment();
    }
  }

  void increment() => count.value++;

  clickOnExpertiseField({required String value}) {
    if (value == "Emergency Medicine") {
      expertiseAreaId.value = 1;
      print("expertiseAreaId:: ${expertiseAreaId.value}");
    }
    increment();
  }

  signUpApiCalling() async {
    if (nameController.text.trim().isNotEmpty &&
        emailController.text.trim().isNotEmpty &&
        lastNameController.text.trim().isNotEmpty &&
        mobileController.text.trim().isNotEmpty &&
        passwordController.text.trim().isNotEmpty &&
        dobController.text.trim().isNotEmpty) {
      showLoading.value = true;
      Map<String, dynamic> bodyParams = {
        ApiKeyConstants.firstName: nameController.text,
        ApiKeyConstants.lastName: lastNameController.text,
        ApiKeyConstants.email: emailController.text,
        ApiKeyConstants.password: passwordController.text,
        ApiKeyConstants.mobile: mobileController.text,
        ApiKeyConstants.countryCode: countryDailCode.value.toString(),
        ApiKeyConstants.type: selectedUserType.value,
        ApiKeyConstants.title: titleController.text,
        ApiKeyConstants.expertiseAreaId: expertiseAreaId.value,
      };

      print("Check data :-- ${bodyParams}");
      try {
        SimpleResponseModel? simpleResponseModel =
            await ApiMethods.register(bodyParams: bodyParams);
        if (simpleResponseModel != null && simpleResponseModel.status != false) {
          // Get.toNamed(
          //   Routes.LOGIN,
          // );

          bodyParamsForSend = {
            ApiKeyConstants.email: emailController.text.trim(),
            ApiKeyConstants.type: selectedUserType.value,
          };
          // Get.toNamed(
          //   Routes.INTEREST_CATEGORIES,
          // );
          Get.toNamed(Routes.OTP_VERIFICATION_SCREEN,
              parameters: bodyParamsForSend);
        } else {
          CommonWidgets.showMyToastMessage(simpleResponseModel!.message ?? '');
        }
        showLoading.value = false;
      } catch (e) {
        showLoading.value = false;
        CommonWidgets.showMyToastMessage(
            'Enter unique email and phone number...');
      }
    } else {
      showLoading.value = false;
      CommonWidgets.showMyToastMessage(StringConstants.allFieldsRequired);
    }
  }

  clickOnLogin() {
    Get.back();
  }

  void clickOnSignIn(BuildContext context) {
    if (selectedUserType.value == "Patient") {
      // Get.toNamed(Routes.PATIENT_NAV_BAR);

      signUpApiCalling();
    } else {
      expertiseAreaId = 1.obs;
      signUpApiCalling();
    }
  }
}
