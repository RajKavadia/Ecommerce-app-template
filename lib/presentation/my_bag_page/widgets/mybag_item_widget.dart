import '../controller/my_bag_controller.dart';
import '../models/mybag_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MybagItemWidget extends StatelessWidget {
  MybagItemWidget(this.mybagItemModelObj);

  MybagItemModel mybagItemModelObj;

  var controller = Get.find<MyBagController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        104,
      ),
      width: getHorizontalSize(
        346,
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: getMargin(
                right: 3,
              ),
              decoration: AppDecoration.outlineBlack90014.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
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
                  Container(
                    width: getHorizontalSize(
                      213,
                    ),
                    margin: getMargin(
                      left: 11,
                      top: 10,
                      right: 15,
                      bottom: 12,
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
                            left: 1,
                            top: 4,
                          ),
                          child: Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_color".tr,
                                      style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(
                                          11,
                                        ),
                                        fontFamily: 'Metropolis',
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " ",
                                      style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(
                                          11,
                                        ),
                                        fontFamily: 'Metropolis',
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "lbl_black".tr,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          11,
                                        ),
                                        fontFamily: 'Metropolis',
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 13,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_size2".tr,
                                        style: TextStyle(
                                          color: ColorConstant.gray500,
                                          fontSize: getFontSize(
                                            11,
                                          ),
                                          fontFamily: 'Metropolis',
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                          color: ColorConstant.gray500,
                                          fontSize: getFontSize(
                                            11,
                                          ),
                                          fontFamily: 'Metropolis',
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl_l".tr,
                                        style: TextStyle(
                                          color: ColorConstant.gray900,
                                          fontSize: getFontSize(
                                            11,
                                          ),
                                          fontFamily: 'Metropolis',
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 14,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 36,
                                width: 36,
                                variant: IconButtonVariant.OutlineBlack90019_1,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgMenu,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 10,
                                  bottom: 11,
                                ),
                                child: Text(
                                  "lbl_1".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMetropolisMedium14Gray900,
                                ),
                              ),
                              CustomIconButton(
                                height: 36,
                                width: 36,
                                margin: getMargin(
                                  left: 16,
                                ),
                                variant: IconButtonVariant.OutlineBlack90019_1,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgPlus,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 80,
                                  top: 10,
                                  bottom: 11,
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
                ],
              ),
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgOverflowmenu,
            height: getSize(
              40,
            ),
            width: getSize(
              40,
            ),
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }
}
