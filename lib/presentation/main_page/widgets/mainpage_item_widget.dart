import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_icon_button.dart';

import '../controller/main_controller.dart';
import '../models/mainpage_item_model.dart';

// ignore: must_be_immutable
class MainpageItemWidget extends StatelessWidget {
  MainpageItemWidget(this.mainpageItemModelObj);

  MainpageItemModel mainpageItemModelObj;

  var controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 17,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                201,
              ),
              width: getHorizontalSize(
                150,
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
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage184x148,
                            height: getVerticalSize(
                              184,
                            ),
                            width: getHorizontalSize(
                              148,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                4,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
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
                                    onTap: () {
                                      Get.toNamed(AppRoutes.productCardScreen);
                                    },
                                    imagePath: ImageConstant.imgImage1,
                                    height: getVerticalSize(
                                      184,
                                    ),
                                    width: getHorizontalSize(
                                      148,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        4,
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
                                      decoration:
                                          AppDecoration.txtFillGray900.copyWith(
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
                          height: getVerticalSize(
                            12,
                          ),
                          width: getHorizontalSize(
                            10,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: getVerticalSize(
                            12,
                          ),
                          width: getHorizontalSize(
                            14,
                          ),
                          margin: getMargin(
                            left: 1,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: getVerticalSize(
                            12,
                          ),
                          width: getHorizontalSize(
                            14,
                          ),
                          margin: getMargin(
                            left: 1,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: getVerticalSize(
                            12,
                          ),
                          width: getHorizontalSize(
                            14,
                          ),
                          margin: getMargin(
                            left: 1,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStar,
                          height: getVerticalSize(
                            12,
                          ),
                          width: getHorizontalSize(
                            14,
                          ),
                          margin: getMargin(
                            left: 1,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            top: 3,
                            bottom: 1,
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
                      bottom: 1,
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
                top: 7,
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
                left: 1,
                top: 4,
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
                left: 2,
                top: 7,
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
