import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/presentation/my_profile_settings_password_change_bottomsheet/models/my_profile_settings_password_change_model.dart';
import 'package:flutter/material.dart';

class MyProfileSettingsPasswordChangeController extends GetxController {
  TextEditingController textFieldOrdinaryInactiveController =
      TextEditingController();

  TextEditingController textFieldOrdinaryInactiveOneController =
      TextEditingController();

  TextEditingController textFieldOrdinaryInactiveTwoController =
      TextEditingController();

  Rx<MyProfileSettingsPasswordChangeModel>
      myProfileSettingsPasswordChangeModelObj =
      MyProfileSettingsPasswordChangeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    textFieldOrdinaryInactiveController.dispose();
    textFieldOrdinaryInactiveOneController.dispose();
    textFieldOrdinaryInactiveTwoController.dispose();
  }
}
