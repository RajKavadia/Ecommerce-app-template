import '../controller/favorites_modules_controller.dart';
import '../models/tags1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class Tags1ItemWidget extends StatelessWidget {
  Tags1ItemWidget(this.tags1ItemModelObj);

  Tags1ItemModel tags1ItemModelObj;

  var controller = Get.find<FavoritesModulesController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: getHorizontalSize(
            100,
          ),
          margin: getMargin(
            right: 12,
          ),
          padding: getPadding(
            left: 20,
            top: 7,
            right: 20,
            bottom: 7,
          ),
          decoration: AppDecoration.txtFillGray900.copyWith(
            borderRadius: BorderRadiusStyle.txtCircleBorder15,
          ),
          child: Text(
            "lbl_summer".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtMetropolisMedium14WhiteA700,
          ),
        ),
      ),
    );
  }
}
