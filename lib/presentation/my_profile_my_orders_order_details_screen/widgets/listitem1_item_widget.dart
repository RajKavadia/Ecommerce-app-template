import '../controller/my_profile_my_orders_order_details_controller.dart';
import '../models/listitem1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class Listitem1ItemWidget extends StatelessWidget {
  Listitem1ItemWidget(this.listitem1ItemModelObj);

  Listitem1ItemModel listitem1ItemModelObj;

  var controller = Get.find<MyProfileMyOrdersOrderDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
              bottom: 17,
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
                    top: 7,
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
                              text: "lbl_gray".tr,
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
                          left: 16,
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
                    top: 9,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 2,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_units".tr,
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
                                text: "lbl_1".tr,
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
                      Padding(
                        padding: getPadding(
                          left: 153,
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
    );
  }
}
