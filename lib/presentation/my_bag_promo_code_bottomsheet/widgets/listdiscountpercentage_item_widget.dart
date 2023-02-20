import '../controller/my_bag_promo_code_controller.dart';
import '../models/listdiscountpercentage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListdiscountpercentageItemWidget extends StatelessWidget {
  ListdiscountpercentageItemWidget(this.listdiscountpercentageItemModelObj);

  ListdiscountpercentageItemModel listdiscountpercentageItemModelObj;

  var controller = Get.find<MyBagPromoCodeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack900141.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Container(
            width: getHorizontalSize(
              80,
            ),
            padding: getPadding(
              left: 9,
              top: 21,
              right: 9,
              bottom: 21,
            ),
            decoration: AppDecoration.gradientRed900RedA700.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    bottom: 3,
                  ),
                  child: Text(
                    "lbl_103".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMetropolisBold34WhiteA700,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    27,
                  ),
                  width: getHorizontalSize(
                    20,
                  ),
                  margin: getMargin(
                    left: 1,
                    top: 2,
                    right: 1,
                    bottom: 6,
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "lbl_off".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMetropolisBold14,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "lbl".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMetropolisBold14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: getHorizontalSize(
              106,
            ),
            margin: getMargin(
              left: 14,
              top: 24,
              bottom: 22,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_personal_offer".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMetropolisMedium14Gray900,
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    "lbl_mypromocode2020".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMetropolisRegular11Gray900,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: getHorizontalSize(
              93,
            ),
            margin: getMargin(
              left: 36,
              top: 12,
              right: 14,
              bottom: 11,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "msg_6_days_remaining".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMetropolisRegular11,
                ),
                CustomButton(
                  height: getVerticalSize(
                    36,
                  ),
                  width: getHorizontalSize(
                    93,
                  ),
                  text: "lbl_apply".tr,
                  margin: getMargin(
                    top: 9,
                  ),
                  shape: ButtonShape.CircleBorder18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
