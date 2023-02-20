import '../controller/shipping_addresses_controller.dart';
import '../models/listname1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_checkbox.dart';

// ignore: must_be_immutable
class Listname1ItemWidget extends StatelessWidget {
  Listname1ItemWidget(this.listname1ItemModelObj);

  Listname1ItemModel listname1ItemModelObj;

  var controller = Get.find<ShippingAddressesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 23,
          top: 18,
          right: 23,
          bottom: 18,
        ),
        decoration: AppDecoration.outlineBlack90014.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                left: 5,
                top: 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_jane_doe".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMetropolisMedium14Gray900,
                  ),
                  Text(
                    "lbl_edit".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMetropolisMedium14Red700,
                  ),
                ],
              ),
            ),
            Container(
              width: getHorizontalSize(
                235,
              ),
              margin: getMargin(
                left: 5,
                top: 12,
                right: 57,
              ),
              child: Text(
                "msg_3_newbridge_court".tr,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtMetropolisRegular14,
              ),
            ),
            Obx(
              () => CustomCheckbox(
                text: "msg_use_as_the_shipping".tr,
                iconSize: getHorizontalSize(
                  20,
                ),
                value: controller.checkbox.value,
                margin: getMargin(
                  left: 5,
                  top: 16,
                  right: 74,
                ),
                fontStyle: CheckboxFontStyle.MetropolisRegular14,
                onChange: (value) {
                  controller.checkbox.value = value;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
