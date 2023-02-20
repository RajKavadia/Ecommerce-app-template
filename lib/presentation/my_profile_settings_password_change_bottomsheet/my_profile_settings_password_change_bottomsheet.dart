import 'controller/my_profile_settings_password_change_controller.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/core/utils/validation_functions.dart';
import 'package:raj_s_application5/widgets/custom_button.dart';
import 'package:raj_s_application5/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MyProfileSettingsPasswordChangeBottomsheet extends StatelessWidget {
  MyProfileSettingsPasswordChangeBottomsheet(this.controller);

  MyProfileSettingsPasswordChangeController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 15,
            top: 14,
            right: 15,
            bottom: 14,
          ),
          decoration: AppDecoration.background.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL34,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: getHorizontalSize(
                  60,
                ),
                child: Divider(
                  thickness: getVerticalSize(
                    6,
                  ),
                  color: ColorConstant.gray500,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 18,
                  ),
                  child: Text(
                    "lbl_password_change".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMetropolisSemiBold18,
                  ),
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: controller.textFieldOrdinaryInactiveController,
                hintText: "lbl_old_password".tr,
                margin: getMargin(
                  left: 1,
                  top: 19,
                ),
                textInputType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "Please enter valid password";
                  }
                  return null;
                },
                isObscureText: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(
                    top: 17,
                  ),
                  child: Text(
                    "msg_forgot_password".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMetropolisMedium14Gray500,
                  ),
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: controller.textFieldOrdinaryInactiveOneController,
                hintText: "lbl_new_password".tr,
                margin: getMargin(
                  left: 1,
                  top: 20,
                ),
                textInputType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "Please enter valid password";
                  }
                  return null;
                },
                isObscureText: true,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: controller.textFieldOrdinaryInactiveTwoController,
                hintText: "msg_repeat_new_password".tr,
                margin: getMargin(
                  left: 1,
                  top: 24,
                ),
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "Please enter valid password";
                  }
                  return null;
                },
                isObscureText: true,
              ),
              CustomButton(
                height: getVerticalSize(
                  48,
                ),
                text: "lbl_save_password".tr,
                margin: getMargin(
                  left: 1,
                  top: 32,
                  bottom: 34,
                ),
                padding: ButtonPadding.PaddingAll16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
