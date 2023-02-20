import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/core/utils/validation_functions.dart';
import 'package:raj_s_application5/domain/facebookauth/facebook_auth_helper.dart';
import 'package:raj_s_application5/domain/googleauth/google_auth_helper.dart';
import 'package:raj_s_application5/widgets/custom_button.dart';
import 'package:raj_s_application5/widgets/custom_checkbox.dart';
import 'package:raj_s_application5/widgets/custom_text_form_field.dart';

import 'controller/sign_up_page_controller.dart';

// ignore_for_file: must_be_immutable
class SignUpPageScreen extends GetWidget<SignUpPageController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            body: Form(
                key: _formKey,
                child: Container(
                    padding: getPadding(all: 8),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
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
                                    padding: getPadding(left: 6, top: 30),
                                    child: Text("lbl_sign_up".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMetropolisBold34))
                              ]),
                          Container(
                              margin: getMargin(left: 8, top: 73, right: 8),
                              padding: getPadding(
                                  left: 20, top: 13, right: 20, bottom: 13),
                              decoration: AppDecoration.white.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMetropolisRegular11),
                                    Obx(() => CustomCheckbox(
                                        width: getHorizontalSize(302),
                                        text: "lbl_mr_muffin".tr,
                                        value: controller.checkbox.value,
                                        margin: getMargin(bottom: 5),
                                        fontStyle: CheckboxFontStyle
                                            .MetropolisMedium14,
                                        isRightCheck: true,
                                        onChange: (value) {
                                          controller.checkbox.value = value;
                                        }))
                                  ])),
                          Container(
                              width: getHorizontalSize(343),
                              margin: getMargin(left: 8, top: 8, right: 8),
                              padding: getPadding(
                                  left: 20, top: 13, right: 20, bottom: 13),
                              decoration: AppDecoration.white.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("lbl_email".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMetropolisRegular11),
                                    Padding(
                                        padding: getPadding(top: 6, bottom: 4),
                                        child: Row(children: [
                                          Text("lbl_mrmuff".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMetropolisMedium14),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: SizedBox(
                                                  width: getHorizontalSize(1),
                                                  child: Divider(
                                                      thickness:
                                                          getVerticalSize(13),
                                                      color: ColorConstant
                                                          .black900)))
                                        ]))
                                  ])),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller
                                  .textFieldOrdinaryInactiveController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(left: 8, top: 8, right: 8),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: true),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 14, right: 8),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 5, bottom: 4),
                                            child: Text(
                                                "msg_already_have_an".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMetropolisMedium14Gray900)),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(left: 4))
                                      ]))),
                          CustomButton(
                              onTap: () {
                                Get.toNamed(AppRoutes.loginPageScreen);
                              },
                              height: getVerticalSize(48),
                              text: "lbl_sign_up2".tr,
                              margin: getMargin(left: 8, top: 26, right: 8),
                              padding: ButtonPadding.PaddingAll16),
                          Spacer(),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(bottom: 6),
                                  child: Text("msg_or_sign_up_with".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMetropolisMedium14Gray900)))
                        ]))),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 88, right: 87, bottom: 57),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: ColorConstant.whiteA700,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder24),
                      child: Container(
                          height: getVerticalSize(64),
                          width: getHorizontalSize(92),
                          padding: getPadding(
                              left: 34, top: 20, right: 34, bottom: 20),
                          decoration: AppDecoration.white.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24),
                          child: Stack(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgGoogle,
                                height: getVerticalSize(24),
                                width: getHorizontalSize(23),
                                alignment: Alignment.center,
                                onTap: () {
                                  onTapImgGoogle();
                                })
                          ]))),
                  Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(left: 16),
                      color: ColorConstant.whiteA700,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder24),
                      child: Container(
                          height: getVerticalSize(64),
                          width: getHorizontalSize(92),
                          padding: getPadding(
                              left: 34, top: 20, right: 34, bottom: 20),
                          decoration: AppDecoration.white.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24),
                          child: Stack(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgFacebook,
                                height: getSize(24),
                                width: getSize(24),
                                alignment: Alignment.center,
                                onTap: () {
                                  onTapImgFacebook();
                                })
                          ])))
                ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapImgGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
