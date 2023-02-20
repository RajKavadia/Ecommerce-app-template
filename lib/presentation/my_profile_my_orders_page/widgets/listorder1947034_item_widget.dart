import '../controller/my_profile_my_orders_controller.dart';
import '../models/listorder1947034_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_button.dart';

// ignore: must_be_immutable
class Listorder1947034ItemWidget extends StatelessWidget {
  Listorder1947034ItemWidget(this.listorder1947034ItemModelObj);

  Listorder1947034ItemModel listorder1947034ItemModelObj;

  var controller = Get.find<MyProfileMyOrdersController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 15,
          top: 18,
          right: 15,
          bottom: 18,
        ),
        decoration: AppDecoration.outlineBlack9001e1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                left: 4,
                right: 3,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_order_1947034".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMetropolisSemiBold16Gray900,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      "lbl_05_12_2019".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMetropolisRegular14Gray500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 3,
                top: 17,
                right: 77,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      "msg_tracking_number".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMetropolisRegular14Gray500,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 10,
                      bottom: 1,
                    ),
                    child: Text(
                      "lbl_iw3475453455".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMetropolisMedium14Gray900,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 4,
                top: 7,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: Text(
                      "lbl_quantity".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMetropolisRegular14Gray500,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 11,
                    ),
                    child: Text(
                      "lbl_33".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMetropolisSemiBold16,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: getPadding(
                      top: 1,
                      bottom: 1,
                    ),
                    child: Text(
                      "lbl_total_amount2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMetropolisRegular14Gray500,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 11,
                    ),
                    child: Text(
                      "lbl_112".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMetropolisSemiBold16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 4,
                top: 16,
                right: 3,
                bottom: 1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomButton(
                    height: getVerticalSize(
                      36,
                    ),
                    width: getHorizontalSize(
                      98,
                    ),
                    text: "lbl_details".tr,
                    variant: ButtonVariant.OutlineGray900,
                    shape: ButtonShape.CircleBorder18,
                    fontStyle: ButtonFontStyle.MetropolisMedium14Gray900,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                      bottom: 11,
                    ),
                    child: Text(
                      "lbl_delivered".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMetropolisMedium14Green600,
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
