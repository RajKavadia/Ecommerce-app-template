import 'package:raj_s_application5/core/app_export.dart';import 'package:raj_s_application5/presentation/my_profile_settings_screen/models/my_profile_settings_model.dart';import 'package:flutter/material.dart';class MyProfileSettingsController extends GetxController {TextEditingController textFieldOrdinaryInactiveController = TextEditingController();

Rx<MyProfileSettingsModel> myProfileSettingsModelObj = MyProfileSettingsModel().obs;

RxBool isSelectedSwitch = false.obs;

RxBool isSelectedSwitch1 = false.obs;

RxBool isSelectedSwitch2 = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); textFieldOrdinaryInactiveController.dispose(); } 
 }
