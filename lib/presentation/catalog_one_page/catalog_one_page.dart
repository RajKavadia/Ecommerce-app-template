import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:raj_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:raj_s_application5/widgets/custom_floating_button.dart';

import '../catalog_one_page/widgets/listitem_item_widget.dart';
import '../catalog_one_page/widgets/listtagselectedsmall_item_widget.dart';
import 'controller/catalog_one_controller.dart';
import 'models/catalog_one_model.dart';
import 'models/listitem_item_model.dart';
import 'models/listtagselectedsmall_item_model.dart';

// ignore_for_file: must_be_immutable
class CatalogOnePage extends StatelessWidget {
  CatalogOneController controller =
      Get.put(CatalogOneController(CatalogOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.background,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(top: 8, bottom: 8),
                              decoration: AppDecoration.outlineBlack9001e,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomAppBar(
                                        height: getVerticalSize(88),
                                        title: Padding(
                                            padding: getPadding(left: 8),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  AppbarImage(
                                                      height: getSize(24),
                                                      width: getSize(24),
                                                      svgPath: ImageConstant
                                                          .imgArrowleft,
                                                      margin:
                                                          getMargin(right: 223),
                                                      onTap: onTapArrowleft5),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 6, top: 31),
                                                          child: Text(
                                                              "lbl_women_s_tops"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMetropolisBold34)))
                                                ])),
                                        actions: [
                                          AppbarImage(
                                              height: getSize(24),
                                              width: getSize(24),
                                              svgPath: ImageConstant
                                                  .imgSearchGray900,
                                              margin: getMargin(
                                                  left: 11,
                                                  right: 11,
                                                  bottom: 64))
                                        ]),
                                    Container(
                                        height: getVerticalSize(42),
                                        child: Obx(() => ListView.separated(
                                            padding:
                                                getPadding(left: 16, top: 12),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(7));
                                            },
                                            itemCount: controller
                                                .catalogOneModelObj
                                                .value
                                                .listtagselectedsmallItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              ListtagselectedsmallItemModel
                                                  model = controller
                                                          .catalogOneModelObj
                                                          .value
                                                          .listtagselectedsmallItemList[
                                                      index];
                                              return ListtagselectedsmallItemWidget(
                                                  model);
                                            }))),
                                    Container(
                                        margin: getMargin(
                                            left: 16,
                                            top: 18,
                                            right: 16,
                                            bottom: 2),
                                        decoration: AppDecoration.background,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgSort,
                                                  height: getSize(24),
                                                  width: getSize(24)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 5,
                                                      bottom: 7),
                                                  child: Text("lbl_filters".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMetropolisRegular11Gray900)),
                                              Spacer(flex: 48),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgSortGray900,
                                                  height: getSize(24),
                                                  width: getSize(24)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 6,
                                                      top: 6,
                                                      bottom: 6),
                                                  child: Text(
                                                      "msg_price_lowest_to".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMetropolisRegular11Gray900)),
                                              Spacer(flex: 51),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgGrid,
                                                  height: getSize(24),
                                                  width: getSize(24))
                                            ]))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 15, top: 16, right: 16),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: controller.catalogOneModelObj.value
                                  .listitemItemList.length,
                              itemBuilder: (context, index) {
                                ListitemItemModel model = controller
                                    .catalogOneModelObj
                                    .value
                                    .listitemItemList[index];
                                return ListitemItemWidget(model);
                              })))
                    ]))),
            floatingActionButton: CustomFloatingButton(
                height: 36,
                width: 36,
                variant: FloatingButtonVariant.White,
                child: CustomImageView(
                    svgPath: ImageConstant.imgLocation,
                    height: getVerticalSize(18.0),
                    width: getHorizontalSize(18.0)))));
  }

  onTapArrowleft5() {
    Get.back();
  }
}
