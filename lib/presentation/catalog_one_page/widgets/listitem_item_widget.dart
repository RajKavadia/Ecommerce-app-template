import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_icon_button.dart';

import '../controller/catalog_one_controller.dart';
import '../models/listitem_item_model.dart';

// ignore: must_be_immutable
class ListitemItemWidget extends StatelessWidget {
  ListitemItemWidget(this.listitemItemModelObj);

  ListitemItemModel listitemItemModelObj;

  var controller = Get.find<CatalogOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        114,
      ),
      width: getHorizontalSize(
        343,
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: getMargin(
                bottom: 10,
              ),
              decoration: AppDecoration.outlineBlack90014.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getSize(
                      104,
                    ),
                    width: getSize(
                      104,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage104x104,
                          height: getSize(
                            104,
                          ),
                          width: getSize(
                            104,
                          ),
                          radius: BorderRadius.only(
                            topLeft: Radius.circular(
                              getHorizontalSize(
                                8,
                              ),
                            ),
                            bottomLeft: Radius.circular(
                              getHorizontalSize(
                                8,
                              ),
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getSize(
                              104,
                            ),
                            width: getSize(
                              104,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage6,
                                  height: getSize(
                                    104,
                                  ),
                                  width: getSize(
                                    104,
                                  ),
                                  radius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getHorizontalSize(
                                        8,
                                      ),
                                    ),
                                    bottomLeft: Radius.circular(
                                      getHorizontalSize(
                                        8,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage7,
                                  height: getSize(
                                    104,
                                  ),
                                  width: getSize(
                                    104,
                                  ),
                                  radius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getHorizontalSize(
                                        8,
                                      ),
                                    ),
                                    bottomLeft: Radius.circular(
                                      getHorizontalSize(
                                        8,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      90,
                    ),
                    margin: getMargin(
                      left: 11,
                      top: 10,
                      right: 137,
                      bottom: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_pullover".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMetropolisSemiBold16,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                          ),
                          child: Text(
                            "lbl_mango".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMetropolisRegular11,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 7,
                          ),
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
                                  left: 2,
                                  top: 3,
                                ),
                                child: Text(
                                  "lbl_3".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMetropolisRegular10Gray500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 10,
                          ),
                          child: Text(
                            "lbl_51".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMetropolisMedium14Gray900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomIconButton(
            height: 36,
            width: 36,
            alignment: Alignment.bottomRight,
            child: CustomImageView(
              svgPath: ImageConstant.imgLocation,
            ),
          ),
        ],
      ),
    );
  }
}
