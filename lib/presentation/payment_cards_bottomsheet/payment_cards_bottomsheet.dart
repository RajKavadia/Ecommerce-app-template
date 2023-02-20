import 'controller/payment_cards_controller.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/core/utils/validation_functions.dart';
import 'package:raj_s_application5/widgets/custom_button.dart';
import 'package:raj_s_application5/widgets/custom_checkbox.dart';
import 'package:raj_s_application5/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PaymentCardsBottomsheet extends StatelessWidget {
  PaymentCardsBottomsheet(this.controller);

  PaymentCardsController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 15,
            right: 16,
            bottom: 15,
          ),
          decoration: AppDecoration.background.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL34,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              Padding(
                padding: getPadding(
                  top: 26,
                ),
                child: Text(
                  "lbl_add_new_card".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMetropolisSemiBold18,
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: controller.textFieldOrdinaryInactiveController,
                hintText: "lbl_name_on_card".tr,
                margin: getMargin(
                  top: 21,
                ),
                textInputAction: TextInputAction.done,
                validator: (value) {
                  if (!isText(value)) {
                    return "Please enter valid text";
                  }
                  return null;
                },
              ),
              Container(
                margin: getMargin(
                  top: 20,
                ),
                padding: getPadding(
                  left: 20,
                  top: 13,
                  right: 20,
                  bottom: 13,
                ),
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_card_number".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMetropolisRegular11,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 6,
                            ),
                            child: Text(
                              "msg_5546_8205_3693_3947".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMetropolisMedium14Gray900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgLightbulb,
                      height: getVerticalSize(
                        25,
                      ),
                      width: getHorizontalSize(
                        32,
                      ),
                      margin: getMargin(
                        top: 9,
                        bottom: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Container(
                  width: getHorizontalSize(
                    343,
                  ),
                  margin: getMargin(
                    top: 20,
                  ),
                  padding: getPadding(
                    left: 20,
                    top: 14,
                    right: 20,
                    bottom: 14,
                  ),
                  decoration: AppDecoration.white.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_expire_date".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMetropolisRegular11,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 5,
                          bottom: 4,
                        ),
                        child: Text(
                          "lbl_05_23".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMetropolisMedium14Gray900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Container(
                  margin: getMargin(
                    top: 20,
                  ),
                  padding: getPadding(
                    left: 20,
                    top: 13,
                    right: 20,
                    bottom: 13,
                  ),
                  decoration: AppDecoration.white.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_cvv".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMetropolisRegular11,
                      ),
                      Padding(
                        padding: getPadding(
                          bottom: 5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 6,
                              ),
                              child: Text(
                                "lbl_567".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMetropolisMedium14Gray900,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgQuestion,
                              height: getSize(
                                20,
                              ),
                              width: getSize(
                                20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Obx(
                  () => CustomCheckbox(
                    alignment: Alignment.centerLeft,
                    text: "msg_set_as_default_payment".tr,
                    iconSize: getHorizontalSize(
                      20,
                    ),
                    value: controller.checkbox.value,
                    margin: getMargin(
                      top: 30,
                      right: 102,
                    ),
                    fontStyle: CheckboxFontStyle.MetropolisRegular14,
                    onChange: (value) {
                      controller.checkbox.value = value;
                    },
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  48,
                ),
                text: "lbl_add_card".tr,
                margin: getMargin(
                  top: 22,
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
