import '../controller/catalog_one_controller.dart';
import '../models/listtagselectedsmall_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class ListtagselectedsmallItemWidget extends StatelessWidget {
  ListtagselectedsmallItemWidget(this.listtagselectedsmallItemModelObj);

  ListtagselectedsmallItemModel listtagselectedsmallItemModelObj;

  var controller = Get.find<CatalogOneController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: getHorizontalSize(
          100,
        ),
        margin: getMargin(
          right: 7,
        ),
        padding: getPadding(
          left: 23,
          top: 7,
          right: 23,
          bottom: 7,
        ),
        decoration: AppDecoration.txtFillGray900.copyWith(
          borderRadius: BorderRadiusStyle.txtCircleBorder15,
        ),
        child: Text(
          "lbl_t_shirts".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtMetropolisMedium14WhiteA700,
        ),
      ),
    );
  }
}
