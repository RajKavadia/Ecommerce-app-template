import '../controller/main_two_controller.dart';
import '../models/listcondition_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListconditionItemWidget extends StatelessWidget {
  ListconditionItemWidget(this.listconditionItemModelObj);

  ListconditionItemModel listconditionItemModelObj;

  var controller = Get.find<MainTwoController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 17,
          bottom: 1,
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
                            imagePath: ImageConstant.imgImage5,
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
                                left: 8,
                                top: 8,
                              ),
                              padding: getPadding(
                                left: 5,
                                top: 6,
                                right: 5,
                                bottom: 6,
                              ),
                              decoration: AppDecoration.txtFillGray900.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtCircleBorder12,
                              ),
                              child: Text(
                                "lbl_new2".tr,
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
                          svgPath: ImageConstant.imgStar,
                          height: getSize(
                            14,
                          ),
                          width: getSize(
                            14,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
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
                          svgPath: ImageConstant.imgStar,
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
                          svgPath: ImageConstant.imgStar,
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
                          svgPath: ImageConstant.imgStar,
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
                            left: 3,
                            top: 4,
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_0".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMetropolisRegular10,
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
                top: 6,
              ),
              child: Text(
                "lbl_ovs".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtMetropolisRegular11,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 5,
              ),
              child: Text(
                "lbl_blouse".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtMetropolisSemiBold16,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 1,
                top: 2,
              ),
              child: Text(
                "lbl_30".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtMetropolisMedium14Gray9001,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
