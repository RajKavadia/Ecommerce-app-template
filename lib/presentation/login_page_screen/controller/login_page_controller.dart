import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/presentation/login_page_screen/models/login_page_model.dart';

class LoginPageController extends GetxController {
  TextEditingController textFieldOrdinaryInactiveController =
      TextEditingController();

  Rx<LoginPageModel> loginPageModelObj = LoginPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    textFieldOrdinaryInactiveController.dispose();
  }
}
