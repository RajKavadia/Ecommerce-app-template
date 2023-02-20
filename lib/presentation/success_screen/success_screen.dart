import 'controller/success_controller.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_button.dart';

class SuccessScreen extends GetWidget<SuccessController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSuccess,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 55,
              top: 75,
              right: 55,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_success".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMetropolisBold34Black900,
                ),
                Container(
                  width: getHorizontalSize(
                    262,
                  ),
                  margin: getMargin(
                    top: 19,
                  ),
                  child: Text(
                    "msg_your_order_will".tr,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtMetropolisSemiBold16Black900,
                  ),
                ),
                CustomButton(
                  height: getVerticalSize(
                    36,
                  ),
                  width: getHorizontalSize(
                    160,
                  ),
                  text: "msg_continue_shopping".tr,
                  margin: getMargin(
                    top: 16,
                    bottom: 5,
                  ),
                  shape: ButtonShape.CircleBorder18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
