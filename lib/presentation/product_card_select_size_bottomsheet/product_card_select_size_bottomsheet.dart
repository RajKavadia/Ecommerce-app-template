import 'controller/product_card_select_size_controller.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class ProductCardSelectSizeBottomsheet extends StatelessWidget {
  ProductCardSelectSizeBottomsheet(this.controller);

  ProductCardSelectSizeController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 14,
            bottom: 14,
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
                  top: 16,
                ),
                child: Text(
                  "lbl_select_size".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMetropolisSemiBold18,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 25,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        100,
                      ),
                      padding: getPadding(
                        left: 30,
                        top: 12,
                        right: 40,
                        bottom: 12,
                      ),
                      decoration: AppDecoration.txtWhite.copyWith(
                        borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                      ),
                      child: Text(
                        "lbl_xs".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMetropolisMedium14Gray900,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        100,
                      ),
                      padding: getPadding(
                        left: 30,
                        top: 12,
                        right: 45,
                        bottom: 12,
                      ),
                      decoration: AppDecoration.txtWhite.copyWith(
                        borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                      ),
                      child: Text(
                        "lbl_s".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMetropolisMedium14Gray900,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        100,
                      ),
                      padding: getPadding(
                        left: 30,
                        top: 12,
                        right: 43,
                        bottom: 12,
                      ),
                      decoration: AppDecoration.txtWhite.copyWith(
                        borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                      ),
                      child: Text(
                        "lbl_m".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMetropolisMedium14Gray900,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 16,
                    top: 16,
                  ),
                  child: Row(
                    children: [
                      CustomButton(
                        height: getVerticalSize(
                          40,
                        ),
                        width: getHorizontalSize(
                          100,
                        ),
                        text: "lbl_l".tr,
                        variant: ButtonVariant.White,
                        shape: ButtonShape.RoundedBorder8,
                        fontStyle: ButtonFontStyle.MetropolisMedium14Gray900,
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          40,
                        ),
                        width: getHorizontalSize(
                          100,
                        ),
                        text: "lbl_xl".tr,
                        margin: getMargin(
                          left: 22,
                        ),
                        variant: ButtonVariant.White,
                        shape: ButtonShape.RoundedBorder8,
                        fontStyle: ButtonFontStyle.MetropolisMedium14Gray900,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Divider(
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray50071,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 15,
                    top: 14,
                  ),
                  child: Text(
                    "lbl_size_info".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMetropolisRegular16,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Divider(
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray50071,
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  48,
                ),
                text: "lbl_add_to_cart".tr,
                margin: getMargin(
                  left: 16,
                  top: 27,
                  right: 16,
                  bottom: 30,
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
