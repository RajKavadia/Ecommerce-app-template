import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_icon_button.dart';

import '../controller/favorites_modules_controller.dart';
import '../models/products_item_model.dart';

// ignore: must_be_immutable
class ProductsItemWidget extends StatelessWidget {
  ProductsItemWidget(this.productsItemModelObj);

  ProductsItemModel productsItemModelObj;

  var controller = Get.find<FavoritesModulesController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: getPadding(right: 8, top: 90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      205,
                    ),
                    width: getHorizontalSize(
                      164,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: getVerticalSize(
                              184,
                            ),
                            width: getHorizontalSize(
                              162,
                            ),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage25,
                                  height: getVerticalSize(
                                    184,
                                  ),
                                  width: getHorizontalSize(
                                    162,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      8,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgPlus,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                  alignment: Alignment.topRight,
                                  margin: getMargin(
                                    top: 2,
                                    right: 3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomIconButton(
                          height: 36,
                          width: 36,
                          margin: getMargin(
                            bottom: 2,
                          ),
                          variant: IconButtonVariant.OutlineRed70028,
                          padding: IconButtonPadding.PaddingAll10,
                          alignment: Alignment.bottomRight,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgTicket,
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 7,
                    ),
                    child: Text(
                      "lbl_lime".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMetropolisRegular11,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: Text(
                      "lbl_shirt2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMetropolisSemiBold16,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
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
                  Padding(
                    padding: getPadding(
                      top: 6,
                    ),
                    child: Text(
                      "lbl_10".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMetropolisMedium14Gray900,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: getPadding(
                left: 8,
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
                      164,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: getVerticalSize(
                              184,
                            ),
                            width: getHorizontalSize(
                              162,
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage26,
                                  height: getVerticalSize(
                                    184,
                                  ),
                                  width: getHorizontalSize(
                                    162,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      8,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    width: getHorizontalSize(
                                      151,
                                    ),
                                    margin: getMargin(
                                      left: 8,
                                      top: 2,
                                      right: 3,
                                      bottom: 152,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: getMargin(
                                            top: 6,
                                          ),
                                          padding: getPadding(
                                            left: 5,
                                            top: 6,
                                            right: 5,
                                            bottom: 6,
                                          ),
                                          decoration: AppDecoration.fillGray900
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder12,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "lbl_new2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMetropolisSemiBold11,
                                              ),
                                            ],
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgPlus,
                                          height: getSize(
                                            24,
                                          ),
                                          width: getSize(
                                            24,
                                          ),
                                          margin: getMargin(
                                            bottom: 6,
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
                        CustomIconButton(
                          height: 36,
                          width: 36,
                          margin: getMargin(
                            bottom: 2,
                          ),
                          variant: IconButtonVariant.OutlineRed70028,
                          padding: IconButtonPadding.PaddingAll10,
                          alignment: Alignment.bottomRight,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgTicket,
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
                                  top: 3,
                                ),
                                child: Text(
                                  "lbl_0".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMetropolisRegular10Gray500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 8,
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
                      top: 2,
                    ),
                    child: Text(
                      "msg_longsleeve_violeta".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMetropolisSemiBold16,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 3,
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
                                text: "lbl_orange".tr,
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
                            left: 8,
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
                                  text: "lbl_s".tr,
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
                      top: 5,
                    ),
                    child: Text(
                      "lbl_46".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMetropolisMedium14Gray900,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
