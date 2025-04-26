import 'package:get/get.dart';

import '../modules/Add_appointment_screen/bindings/add_appointment_screen_binding.dart';
import '../modules/Add_appointment_screen/views/add_appointment_screen_view.dart';
import '../modules/Appointment_screen/bindings/appointment_screen_binding.dart';
import '../modules/Appointment_screen/views/appointment_screen_view.dart';
import '../modules/Expert_Appointments_screen/bindings/expert_appointments_screen_binding.dart';
import '../modules/Expert_Appointments_screen/views/expert_appointments_screen_view.dart';
import '../modules/Expert_DashBoard_screen/bindings/expert_dash_board_screen_binding.dart';
import '../modules/Expert_DashBoard_screen/views/expert_dash_board_screen_view.dart';
import '../modules/Expert_Nav_bar_Screen/bindings/expert_nav_bar_screen_binding.dart';
import '../modules/Expert_Nav_bar_Screen/views/expert_nav_bar_screen_view.dart';
import '../modules/Expert_clients_screen/bindings/expert_clients_screen_binding.dart';
import '../modules/Expert_clients_screen/views/expert_clients_screen_view.dart';
import '../modules/Expert_documents_screen/bindings/expert_documents_screen_binding.dart';
import '../modules/Expert_documents_screen/views/expert_documents_screen_view.dart';
import '../modules/Expert_more_screen/bindings/expert_more_screen_binding.dart';
import '../modules/Expert_more_screen/views/expert_more_screen_view.dart';
import '../modules/Health_Map_screen/bindings/health_map_screen_binding.dart';
import '../modules/Health_Map_screen/views/health_map_screen_view.dart';
import '../modules/Language_selection_screen/bindings/language_selection_screen_binding.dart';
import '../modules/Language_selection_screen/views/language_selection_screen_view.dart';
import '../modules/Match_Requests_screen/bindings/match_requests_screen_binding.dart';
import '../modules/Match_Requests_screen/views/match_requests_screen_view.dart';
import '../modules/Medication_delais_screen/bindings/medication_delais_screen_binding.dart';
import '../modules/Medication_delais_screen/views/medication_delais_screen_view.dart';
import '../modules/Reminders_screen/bindings/reminders_screen_binding.dart';
import '../modules/Reminders_screen/views/reminders_screen_view.dart';
import '../modules/Vaccination_screen/bindings/vaccination_screen_binding.dart';
import '../modules/Vaccination_screen/views/vaccination_screen_view.dart';
import '../modules/antipyreticAdviceScreen/bindings/antipyretic_advice_screen_binding.dart';
import '../modules/antipyreticAdviceScreen/views/antipyretic_advice_screen_view.dart';
import '../modules/bodyWeightValuesScreen/bindings/body_weight_values_screen_binding.dart';
import '../modules/bodyWeightValuesScreen/views/body_weight_values_screen_view.dart';
import '../modules/body_mass_index_screen/bindings/body_mass_index_screen_binding.dart';
import '../modules/body_mass_index_screen/views/body_mass_index_screen_view.dart';
import '../modules/breasrfeeding_nutrition_screen/bindings/breasrfeeding_nutrition_screen_binding.dart';
import '../modules/breasrfeeding_nutrition_screen/views/breasrfeeding_nutrition_screen_view.dart';
import '../modules/forgot_pass_screen/bindings/forgot_pass_screen_binding.dart';
import '../modules/forgot_pass_screen/views/forgot_pass_screen_view.dart';
import '../modules/general_growth_screen/bindings/general_growth_screen_binding.dart';
import '../modules/general_growth_screen/views/general_growth_screen_view.dart';
import '../modules/growthChart/bindings/growth_chart_binding.dart';
import '../modules/growthChart/views/growth_chart_view.dart';
import '../modules/heightCircumferenceDataScreen/bindings/height_circumference_data_screen_binding.dart';
import '../modules/heightCircumferenceDataScreen/views/height_circumference_data_screen_view.dart';
import '../modules/heightDataScreen/bindings/height_data_screen_binding.dart';
import '../modules/heightDataScreen/views/height_data_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/how_to_screen/bindings/how_to_screen_binding.dart';
import '../modules/how_to_screen/views/how_to_screen_view.dart';
import '../modules/logInScreen/bindings/log_in_screen_binding.dart';
import '../modules/logInScreen/views/log_in_screen_view.dart';
import '../modules/medication_reminder/bindings/medication_reminder_binding.dart';
import '../modules/medication_reminder/views/medication_reminder_view.dart';
import '../modules/moreScreen/bindings/more_screen_binding.dart';
import '../modules/moreScreen/views/more_screen_view.dart';
import '../modules/myProfile/bindings/my_profile_binding.dart';
import '../modules/myProfile/views/my_profile_view.dart';
import '../modules/new_Vaccination/bindings/new_vaccination_binding.dart';
import '../modules/new_Vaccination/views/new_vaccination_view.dart';
import '../modules/new_screen_test/bindings/new_screen_test_binding.dart';
import '../modules/new_screen_test/views/new_screen_test_view.dart';
import '../modules/new_sleep_tracking/bindings/new_sleep_tracking_binding.dart';
import '../modules/new_sleep_tracking/views/new_sleep_tracking_view.dart';
import '../modules/otpVerificationScreen/bindings/otp_verification_screen_binding.dart';
import '../modules/otpVerificationScreen/views/otp_verification_screen_view.dart';
import '../modules/patientAppointmentListScreen/bindings/patient_appointment_list_screen_binding.dart';
import '../modules/patientAppointmentListScreen/views/patient_appointment_list_screen_view.dart';
import '../modules/patientAssistanceScreen/bindings/patient_assistance_screen_binding.dart';
import '../modules/patientAssistanceScreen/views/patient_assistance_screen_view.dart';
import '../modules/patientDashboardScreen/bindings/patient_dashboard_screen_binding.dart';
import '../modules/patientDashboardScreen/views/patient_dashboard_screen_view.dart';
import '../modules/patientFamilyScreen/bindings/patient_family_screen_binding.dart';
import '../modules/patientFamilyScreen/views/patient_family_screen_view.dart';
import '../modules/patientNavBar/bindings/patient_nav_bar_binding.dart';
import '../modules/patientNavBar/views/patient_nav_bar_view.dart';
import '../modules/registerScreen/bindings/register_screen_binding.dart';
import '../modules/registerScreen/views/register_screen_view.dart';
import '../modules/screen_test_card_screen/bindings/screen_test_card_screen_binding.dart';
import '../modules/screen_test_card_screen/views/screen_test_card_screen_view.dart';
import '../modules/screen_test_screen/bindings/screen_test_screen_binding.dart';
import '../modules/screen_test_screen/views/screen_test_screen_view.dart';
import '../modules/sleep_tracking_screen/bindings/sleep_tracking_screen_binding.dart';
import '../modules/sleep_tracking_screen/views/sleep_tracking_screen_view.dart';
import '../modules/specialistScreen/bindings/specialist_screen_binding.dart';
import '../modules/specialistScreen/views/specialist_screen_view.dart';
import '../modules/splashScreen/bindings/splash_screen_binding.dart';
import '../modules/splashScreen/views/splash_screen_view.dart';
import '../modules/targetHeightCalculationScreen/bindings/target_height_calculation_screen_binding.dart';
import '../modules/targetHeightCalculationScreen/views/target_height_calculation_screen_view.dart';
import '../modules/tempstarSettingScreen/bindings/tempstar_setting_screen_binding.dart';
import '../modules/tempstarSettingScreen/views/tempstar_setting_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static var INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOG_IN_SCREEN,
      page: () => const LogInScreenView(),
      binding: LogInScreenBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VERIFICATION_SCREEN,
      page: () => const OtpVerificationScreenView(),
      binding: OtpVerificationScreenBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_SCREEN,
      page: () => const RegisterScreenView(),
      binding: RegisterScreenBinding(),
    ),
    GetPage(
      name: _Paths.PATIENT_NAV_BAR,
      page: () => const PatientNavBarView(),
      binding: PatientNavBarBinding(),
    ),
    GetPage(
      name: _Paths.PATIENT_DASHBOARD_SCREEN,
      page: () => const PatientDashboardScreenView(),
      binding: PatientDashboardScreenBinding(),
    ),
    GetPage(
      name: _Paths.PATIENT_FAMILY_SCREEN,
      page: () => const PatientFamilyScreenView(),
      binding: PatientFamilyScreenBinding(),
    ),
    GetPage(
      name: _Paths.PATIENT_APPOINTMENT_LIST_SCREEN,
      page: () => const PatientAppointmentListScreenView(),
      binding: PatientAppointmentListScreenBinding(),
    ),
    GetPage(
      name: _Paths.SPECIALIST_SCREEN,
      page: () => const SpecialistScreenView(),
      binding: SpecialistScreenBinding(),
    ),
    GetPage(
      name: _Paths.MORE_SCREEN,
      page: () => const MoreScreenView(),
      binding: MoreScreenBinding(),
    ),
    GetPage(
      name: _Paths.TEMPSTAR_SETTING_SCREEN,
      page: () => const TempstarSettingScreenView(),
      binding: TempstarSettingScreenBinding(),
    ),
    GetPage(
      name: _Paths.GROWTH_CHART,
      page: () => const GrowthChartView(),
      binding: GrowthChartBinding(),
    ),
    GetPage(
      name: _Paths.BODY_WEIGHT_VALUES_SCREEN,
      page: () => const BodyWeightValuesScreenView(),
      binding: BodyWeightValuesScreenBinding(),
      children: [
        GetPage(
          name: _Paths.BODY_WEIGHT_VALUES_SCREEN,
          page: () => const BodyWeightValuesScreenView(),
          binding: BodyWeightValuesScreenBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.HEIGHT_DATA_SCREEN,
      page: () => const HeightDataScreenView(),
      binding: HeightDataScreenBinding(),
    ),
    GetPage(
      name: _Paths.HEIGHT_CIRCUMFERENCE_DATA_SCREEN,
      page: () => const HeightCircumferenceDataScreenView(),
      binding: HeightCircumferenceDataScreenBinding(),
    ),
    GetPage(
      name: _Paths.ANTIPYRETIC_ADVICE_SCREEN,
      page: () => const AntipyreticAdviceScreenView(),
      binding: AntipyreticAdviceScreenBinding(),
    ),
    GetPage(
      name: _Paths.TARGET_HEIGHT_CALCULATION_SCREEN,
      page: () => const TargetHeightCalculationScreenView(),
      binding: TargetHeightCalculationScreenBinding(),
    ),
    GetPage(
      name: _Paths.MY_PROFILE,
      page: () => const MyProfileView(),
      binding: MyProfileBinding(),
    ),
    GetPage(
      name: _Paths.PATIENT_ASSISTANCE_SCREEN,
      page: () => const PatientAssistanceScreenView(),
      binding: PatientAssistanceScreenBinding(),
    ),
    GetPage(
      name: _Paths.HEALTH_MAP_SCREEN,
      page: () => const HealthMapScreenView(),
      binding: HealthMapScreenBinding(),
    ),
    GetPage(
      name: _Paths.APPOINTMENT_SCREEN,
      page: () => const AppointmentScreenView(),
      binding: AppointmentScreenBinding(),
    ),
    GetPage(
      name: _Paths.ADD_APPOINTMENT_SCREEN,
      page: () => const AddAppointmentScreenView(),
      binding: AddAppointmentScreenBinding(),
    ),
    GetPage(
      name: _Paths.LANGUAGE_SELECTION_SCREEN,
      page: () => const LanguageSelectionScreenView(),
      binding: LanguageSelectionScreenBinding(),
    ),
    GetPage(
      name: _Paths.REMINDERS_SCREEN,
      page: () => const RemindersScreenView(),
      binding: RemindersScreenBinding(),
    ),
    GetPage(
      name: _Paths.VACCINATION_SCREEN,
      page: () => const VaccinationScreenView(),
      binding: VaccinationScreenBinding(),
    ),
    GetPage(
      name: _Paths.NEW_VACCINATION,
      page: () => const NewVaccinationView(),
      binding: NewVaccinationBinding(),
    ),
    GetPage(
      name: _Paths.SCREEN_TEST_SCREEN,
      page: () => const ScreenTestScreenView(),
      binding: ScreenTestScreenBinding(),
    ),
    GetPage(
      name: _Paths.SLEEP_TRACKING_SCREEN,
      page: () => const SleepTrackingScreenView(),
      binding: SleepTrackingScreenBinding(),
    ),
    GetPage(
      name: _Paths.MEDICATION_REMINDER,
      page: () => const MedicationReminderView(),
      binding: MedicationReminderBinding(),
    ),
    GetPage(
      name: _Paths.BREASRFEEDING_NUTRITION_SCREEN,
      page: () => const BreasrfeedingNutritionScreenView(),
      binding: BreasrfeedingNutritionScreenBinding(),
    ),
    GetPage(
      name: _Paths.NEW_SCREEN_TEST,
      page: () => const NewScreenTestView(),
      binding: NewScreenTestBinding(),
    ),
    GetPage(
      name: _Paths.SCREEN_TEST_CARD_SCREEN,
      page: () => const ScreenTestCardScreenView(),
      binding: ScreenTestCardScreenBinding(),
    ),
    GetPage(
      name: _Paths.BODY_MASS_INDEX_SCREEN,
      page: () => const BodyMassIndexScreenView(),
      binding: BodyMassIndexScreenBinding(),
    ),
    GetPage(
      name: _Paths.GENERAL_GROWTH_SCREEN,
      page: () => const GeneralGrowthScreenView(),
      binding: GeneralGrowthScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOW_TO_SCREEN,
      page: () => const HowToScreenView(),
      binding: HowToScreenBinding(),
    ),
    GetPage(
      name: _Paths.NEW_SLEEP_TRACKING,
      page: () => const NewSleepTrackingView(),
      binding: NewSleepTrackingBinding(),
    ),
    GetPage(
      name: _Paths.MEDICATION_DELAIS_SCREEN,
      page: () => const MedicationDelaisScreenView(),
      binding: MedicationDelaisScreenBinding(),
    ),
    GetPage(
      name: _Paths.EXPERT_NAV_BAR_SCREEN,
      page: () => const ExpertNavBarScreenView(),
      binding: ExpertNavBarScreenBinding(),
    ),
    GetPage(
      name: _Paths.EXPERT_DASH_BOARD_SCREEN,
      page: () => const ExpertDashBoardScreenView(),
      binding: ExpertDashBoardScreenBinding(),
    ),
    GetPage(
      name: _Paths.MATCH_REQUESTS_SCREEN,
      page: () => const MatchRequestsScreenView(),
      binding: MatchRequestsScreenBinding(),
    ),
    GetPage(
      name: _Paths.EXPERT_APPOINTMENTS_SCREEN,
      page: () => const ExpertAppointmentsScreenView(),
      binding: ExpertAppointmentsScreenBinding(),
    ),
    GetPage(
      name: _Paths.EXPERT_MORE_SCREEN,
      page: () => const ExpertMoreScreenView(),
      binding: ExpertMoreScreenBinding(),
    ),
    GetPage(
      name: _Paths.EXPERT_DOCUMENTS_SCREEN,
      page: () => const ExpertDocumentsScreenView(),
      binding: ExpertDocumentsScreenBinding(),
    ),
    GetPage(
      name: _Paths.EXPERT_CLIENTS_SCREEN,
      page: () => const ExpertClientsScreenView(),
      binding: ExpertClientsScreenBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASS_SCREEN,
      page: () => const ForgotPassScreenView(),
      binding: ForgotPassScreenBinding(),
    ),
  ];
}
