import '../controller/rating_and_reviews_controller.dart';
import '../models/listname_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class ListnameItemWidget extends StatelessWidget {
  ListnameItemWidget(this.listnameItemModelObj);

  ListnameItemModel listnameItemModelObj;

  var controller = Get.find<RatingAndReviewsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        313,
      ),
      width: getHorizontalSize(
        327,
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: getMargin(
                left: 16,
              ),
              padding: getPadding(
                left: 10,
                top: 15,
                right: 10,
                bottom: 15,
              ),
              decoration: AppDecoration.outlineBlack9000c.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 14,
                        top: 4,
                      ),
                      child: Text(
                        "lbl_helene_moore".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMetropolisSemiBold14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 13,
                      top: 6,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 4,
                          ),
                          child: Text(
                            "lbl_june_5_2019".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMetropolisRegular11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      267,
                    ),
                    margin: getMargin(
                      left: 14,
                      top: 12,
                      right: 10,
                    ),
                    child: Text(
                      "msg_the_dress_is_great".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMetropolisRegular14Gray900a2,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        top: 7,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 10,
                              bottom: 1,
                            ),
                            child: Text(
                              "lbl_helpful".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMetropolisRegular11,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgVolume,
                            height: getVerticalSize(
                              22,
                            ),
                            width: getHorizontalSize(
                              24,
                            ),
                            margin: getMargin(
                              left: 3,
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
          CustomImageView(
            imagePath: ImageConstant.imgImage32x32,
            height: getSize(
              32,
            ),
            width: getSize(
              32,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                16,
              ),
            ),
            alignment: Alignment.topLeft,
          ),
        ],
      ),
    );
  }
}
