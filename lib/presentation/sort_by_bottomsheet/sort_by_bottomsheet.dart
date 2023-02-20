import 'controller/sort_by_controller.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SortByBottomsheet extends StatelessWidget {
  SortByBottomsheet(this.controller);

  SortByController controller;

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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
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
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 18,
                  ),
                  child: Text(
                    "lbl_sort_by".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMetropolisSemiBold18,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 35,
                ),
                child: Text(
                  "lbl_popular".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMetropolisRegular16,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 30,
                ),
                child: Text(
                  "lbl_newest".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMetropolisRegular16,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 31,
                ),
                child: Text(
                  "lbl_customer_review".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMetropolisRegular16,
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: getMargin(
                  top: 17,
                ),
                padding: getPadding(
                  left: 16,
                  top: 15,
                  right: 16,
                  bottom: 15,
                ),
                decoration: AppDecoration.txtFillRed700,
                child: Text(
                  "msg_price_lowest_to".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMetropolisSemiBold16WhiteA700,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 15,
                  bottom: 38,
                ),
                child: Text(
                  "msg_price_highest_to".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMetropolisRegular16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
