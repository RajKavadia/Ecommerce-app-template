import '../controller/main_two_controller.dart';
import '../models/listlanguage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListlanguageItemWidget extends StatelessWidget {
  ListlanguageItemWidget(this.listlanguageItemModelObj);

  ListlanguageItemModel listlanguageItemModelObj;

  var controller = Get.find<MainTwoController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 19,
          bottom: 3,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                205,
              ),
              width: getHorizontalSize(
                149,
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: getVerticalSize(
                        184,
                      ),
                      width: getHorizontalSize(
                        148,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage2184x148,
                            height: getVerticalSize(
                              184,
                            ),
                            width: getHorizontalSize(
                              148,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                8,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: getHorizontalSize(
                                40,
                              ),
                              margin: getMargin(
                                left: 9,
                                top: 8,
                              ),
                              padding: getPadding(
                                left: 5,
                                top: 6,
                                right: 5,
                                bottom: 6,
                              ),
                              decoration: AppDecoration.txtFillRed700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtCircleBorder12,
                              ),
                              child: Text(
                                "lbl_20".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMetropolisSemiBold11,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgStarOrange300,
                          height: getSize(
                            14,
                          ),
                          width: getSize(
                            14,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStarOrange300,
                          height: getSize(
                            14,
                          ),
                          width: getSize(
                            14,
                          ),
                          margin: getMargin(
                            left: 1,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStarOrange300,
                          height: getSize(
                            14,
                          ),
                          width: getSize(
                            14,
                          ),
                          margin: getMargin(
                            left: 1,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStarOrange300,
                          height: getSize(
                            14,
                          ),
                          width: getSize(
                            14,
                          ),
                          margin: getMargin(
                            left: 1,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStarOrange300,
                          height: getSize(
                            14,
                          ),
                          width: getSize(
                            14,
                          ),
                          margin: getMargin(
                            left: 1,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 2,
                            top: 3,
                          ),
                          child: Text(
                            "lbl_102".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMetropolisRegular10Gray500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomIconButton(
                    height: 36,
                    width: 36,
                    margin: getMargin(
                      bottom: 5,
                    ),
                    alignment: Alignment.bottomRight,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgLocation,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 1,
                top: 6,
              ),
              child: Text(
                "lbl_dorothy_perkins".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtMetropolisRegular11,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 1,
                top: 4,
              ),
              child: Text(
                "lbl_evening_dress".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtMetropolisSemiBold16,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 2,
                top: 4,
              ),
              child: Row(
                children: [
                  Container(
                    height: getVerticalSize(
                      14,
                    ),
                    width: getHorizontalSize(
                      23,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getVerticalSize(
                              1,
                            ),
                            width: getHorizontalSize(
                              23,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray500,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_15".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMetropolisMedium14Gray500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 4,
                    ),
                    child: Text(
                      "lbl_12".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMetropolisMedium14Red700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
