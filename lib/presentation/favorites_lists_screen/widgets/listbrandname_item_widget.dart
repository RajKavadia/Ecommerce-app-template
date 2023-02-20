import '../controller/favorites_lists_controller.dart';
import '../models/listbrandname_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListbrandnameItemWidget extends StatelessWidget {
  ListbrandnameItemWidget(this.listbrandnameItemModelObj);

  ListbrandnameItemModel listbrandnameItemModelObj;

  var controller = Get.find<FavoritesListsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        116,
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
                bottom: 12,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          imagePath: ImageConstant.imgImage16,
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
                          imagePath: ImageConstant.imgImage17,
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
                    height: getVerticalSize(
                      90,
                    ),
                    width: getHorizontalSize(
                      227,
                    ),
                    margin: getMargin(
                      bottom: 13,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: getPadding(
                              top: 14,
                            ),
                            child: Text(
                              "lbl_lime".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMetropolisRegular11,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  227,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 28,
                                      ),
                                      child: Text(
                                        "lbl_shirt".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMetropolisSemiBold16,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgPlus,
                                      height: getSize(
                                        40,
                                      ),
                                      width: getSize(
                                        40,
                                      ),
                                      margin: getMargin(
                                        bottom: 4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 6,
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
                                            text: "lbl_blue".tr,
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
                                        left: 25,
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
                              Container(
                                width: getHorizontalSize(
                                  175,
                                ),
                                margin: getMargin(
                                  top: 14,
                                  right: 52,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "lbl_32".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtMetropolisMedium14Gray900,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgStarOrange300,
                                          height: getSize(
                                            14,
                                          ),
                                          width: getSize(
                                            14,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgStarOrange300,
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
                                          svgPath:
                                              ImageConstant.imgStarOrange300,
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
                                          svgPath:
                                              ImageConstant.imgStarOrange300,
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
                                          svgPath:
                                              ImageConstant.imgStarOrange300,
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
                                            style: AppStyle
                                                .txtMetropolisRegular10Gray500,
                                          ),
                                        ),
                                      ],
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
                ],
              ),
            ),
          ),
          CustomIconButton(
            height: 36,
            width: 36,
            variant: IconButtonVariant.OutlineRed70028,
            padding: IconButtonPadding.PaddingAll10,
            alignment: Alignment.bottomRight,
            child: CustomImageView(
              svgPath: ImageConstant.imgTicket,
            ),
          ),
        ],
      ),
    );
  }
}
