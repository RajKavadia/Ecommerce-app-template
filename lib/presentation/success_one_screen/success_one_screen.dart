import 'controller/success_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_button.dart';

class SuccessOneScreen extends GetWidget<SuccessOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          padding: getPadding(
            left: 70,
            right: 70,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgBags,
                height: getVerticalSize(
                  210,
                ),
                width: getHorizontalSize(
                  217,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 47,
                  ),
                  child: Text(
                    "lbl_success".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMetropolisBold34Black900,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  225,
                ),
                margin: getMargin(
                  left: 5,
                  top: 15,
                  right: 5,
                  bottom: 5,
                ),
                child: Text(
                  "msg_your_order_will".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtMetropolisRegular14Black900,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomButton(
          height: getVerticalSize(
            48,
          ),
          text: "msg_continue_shopping2".tr,
          margin: getMargin(
            left: 18,
            right: 14,
            bottom: 59,
          ),
          padding: ButtonPadding.PaddingAll16,
        ),
      ),
    );
  }
}
