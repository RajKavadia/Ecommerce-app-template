import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:raj_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:raj_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:raj_s_application5/widgets/custom_button.dart';
import 'package:raj_s_application5/widgets/custom_icon_button.dart';
import 'package:raj_s_application5/widgets/custom_text_form_field.dart';

import '../product_card_screen/widgets/productcard_item_widget.dart';
import 'controller/product_card_controller.dart';
import 'models/productcard_item_model.dart';

class ProductCardScreen extends GetWidget<ProductCardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(44),
                leadingWidth: 32,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 8, top: 8, bottom: 12),
                    onTap: onTapArrowleft9),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_short_dress".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgShare,
                      margin:
                          getMargin(left: 14, top: 8, right: 14, bottom: 12))
                ],
                styleType: Style.bgShadowBlack90014),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(413),
                                  width: getHorizontalSize(275),
                                  child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage413x275,
                                            height: getVerticalSize(413),
                                            width: getHorizontalSize(275),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: IntrinsicWidth(
                                                    child: Container(
                                                        width: double.maxFinite,
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              410),
                                                                  child: SizedBox(
                                                                      width: getHorizontalSize(
                                                                          125),
                                                                      child: Divider(
                                                                          thickness: getVerticalSize(
                                                                              3),
                                                                          color:
                                                                              ColorConstant.gray900))),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage413x276,
                                                                  height:
                                                                      getVerticalSize(
                                                                          100),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          276),
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              154))
                                                            ])))))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 12, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomTextFormField(
                                                width: getHorizontalSize(138),
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .dropdownUnselectedErrorController,
                                                hintText: "lbl_size".tr,
                                                variant: TextFormFieldVariant
                                                    .OutlineDeeporangeA700,
                                                shape: TextFormFieldShape
                                                    .RoundedBorder8,
                                                padding: TextFormFieldPadding
                                                    .PaddingAll12,
                                                fontStyle: TextFormFieldFontStyle
                                                    .MetropolisMedium14Gray900),
                                            CustomTextFormField(
                                                width: getHorizontalSize(137),
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .dropdownSelectedController,
                                                hintText: "lbl_black".tr,
                                                margin: getMargin(left: 16),
                                                variant: TextFormFieldVariant
                                                    .OutlineGray500,
                                                shape: TextFormFieldShape
                                                    .RoundedBorder8,
                                                padding: TextFormFieldPadding
                                                    .PaddingAll12,
                                                fontStyle: TextFormFieldFontStyle
                                                    .MetropolisMedium14Gray900,
                                                textInputAction:
                                                    TextInputAction.done),
                                            CustomIconButton(
                                                height: 36,
                                                width: 36,
                                                margin: getMargin(
                                                    left: 16,
                                                    top: 2,
                                                    bottom: 2),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgLocation))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 23, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_h_m".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMetropolisSemiBold24Gray900),
                                            Text("lbl_19_99".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMetropolisSemiBold24Gray900)
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 16, top: 2),
                                  child: Text("msg_short_black_dress".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMetropolisRegular11)),
                              Padding(
                                  padding: getPadding(left: 17, top: 8),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgStarOrange300,
                                        height: getSize(14),
                                        width: getSize(14)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgStarOrange300,
                                        height: getSize(14),
                                        width: getSize(14),
                                        margin: getMargin(left: 1)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgStarOrange300,
                                        height: getSize(14),
                                        width: getSize(14),
                                        margin: getMargin(left: 1)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgStarOrange300,
                                        height: getSize(14),
                                        width: getSize(14),
                                        margin: getMargin(left: 1)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgStarOrange300,
                                        height: getSize(14),
                                        width: getSize(14),
                                        margin: getMargin(left: 1)),
                                    Padding(
                                        padding: getPadding(left: 2, top: 3),
                                        child: Text("lbl_102".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMetropolisRegular10Gray500))
                                  ])),
                              Container(
                                  height: getVerticalSize(156),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 18),
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                                width: getHorizontalSize(315),
                                                margin: getMargin(left: 16),
                                                child: Text(
                                                    "msg_short_dress_in_soft"
                                                        .tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMetropolisRegular14))),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16, bottom: 3),
                                                child: Text(
                                                    "lbl_item_details".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMetropolisRegular16))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: getPadding(bottom: 33),
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(374),
                                                    child: Divider(
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color: ColorConstant
                                                            .gray50071)))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 20,
                                                    right: 16,
                                                    bottom: 20),
                                                decoration: AppDecoration
                                                    .outlineBlack90019,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  48),
                                                          text:
                                                              "lbl_add_to_cart"
                                                                  .tr,
                                                          margin: getMargin(
                                                              bottom: 24),
                                                          padding: ButtonPadding
                                                              .PaddingAll16)
                                                    ])))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 13),
                                  child: Divider(
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray50071)),
                              Padding(
                                  padding: getPadding(left: 16, top: 16),
                                  child: Text("lbl_shipping_info".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMetropolisRegular16)),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Divider(
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray50071)),
                              Padding(
                                  padding: getPadding(left: 16, top: 15),
                                  child: Text("lbl_support".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMetropolisRegular16)),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Divider(
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray50071)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 24, right: 15),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("msg_you_can_also_like".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMetropolisSemiBold18),
                                            Padding(
                                                padding: getPadding(
                                                    top: 4, bottom: 2),
                                                child: Text("lbl_12_items".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMetropolisRegular11))
                                          ]))),
                              Container(
                                  height: getVerticalSize(277),
                                  child: Obx(() => ListView.separated(
                                      padding: getPadding(left: 17, top: 15),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(13));
                                      },
                                      itemCount: controller.productCardModelObj
                                          .value.productcardItemList.length,
                                      itemBuilder: (context, index) {
                                        ProductcardItemModel model = controller
                                            .productCardModelObj
                                            .value
                                            .productcardItemList[index];
                                        return ProductcardItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapArrowleft9() {
    Get.back();
  }
}
