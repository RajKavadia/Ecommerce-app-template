import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_button.dart';
import 'package:raj_s_application5/widgets/custom_text_form_field.dart';

import 'controller/forgot_password_controller.dart';

class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(all: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(right: 67),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: getSize(24),
                                    width: getSize(24),
                                    onTap: () {
                                      onTapImgArrowleft();
                                    }),
                                Padding(
                                    padding: getPadding(left: 6, top: 31),
                                    child: Text("lbl_forgot_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMetropolisBold34))
                              ])),
                      Container(
                          width: getHorizontalSize(332),
                          margin: getMargin(left: 7, top: 88, right: 19),
                          child: Text("msg_please_enter_your".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMetropolisMedium14Gray9001)),
                      Padding(
                          padding: getPadding(left: 8, top: 16, right: 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: AppDecoration
                                        .outlineDeeporangeA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder4),
                                    child: Stack(children: [
                                      CustomTextFormField(
                                        hintText: "Enter New Password",
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgClose,
                                        height: getSize(24),
                                        width: getSize(24),
                                      )
                                    ])),
                                Padding(
                                    padding: getPadding(left: 20, top: 4),
                                    child: Text("msg_not_a_valid_email".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMetropolisRegular11DeeporangeA700))
                              ])),
                      CustomButton(
                          onTap: () {
                            Get.back();
                          },
                          height: getVerticalSize(48),
                          text: "lbl_send".tr,
                          margin:
                              getMargin(left: 8, top: 54, right: 8, bottom: 5),
                          padding: ButtonPadding.PaddingAll16)
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
