import 'controller/visual_search_finding_controller.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';

class VisualSearchFindingScreen
    extends GetWidget<VisualSearchFindingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgSearchRed70045x45,
                height: getSize(
                  45,
                ),
                width: getSize(
                  45,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  247,
                ),
                margin: getMargin(
                  top: 16,
                  bottom: 5,
                ),
                child: Text(
                  "msg_finding_similar".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtMetropolisBold34,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
