import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:raj_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:raj_s_application5/widgets/custom_button.dart';

import '../my_profile_my_orders_page/widgets/listorder1947034_item_widget.dart';
import 'controller/my_profile_my_orders_controller.dart';
import 'models/listorder1947034_item_model.dart';
import 'models/my_profile_my_orders_model.dart';

// ignore_for_file: must_be_immutable
class MyProfileMyOrdersPage extends StatelessWidget {
  MyProfileMyOrdersController controller =
      Get.put(MyProfileMyOrdersController(MyProfileMyOrdersModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                leadingWidth: 33,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 9, top: 8, bottom: 8),
                    onTap: onTapArrowleft15),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSearchGray900,
                      margin: getMargin(left: 11, top: 8, right: 11, bottom: 8))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 14, right: 14),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("lbl_my_orders2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMetropolisBold34)),
                      Padding(
                          padding: getPadding(left: 2, top: 24, right: 21),
                          child: Row(children: [
                            CustomButton(
                                height: getVerticalSize(30),
                                width: getHorizontalSize(100),
                                text: "lbl_delivered".tr,
                                variant: ButtonVariant.FillGray900,
                                shape: ButtonShape.CircleBorder15,
                                padding: ButtonPadding.PaddingAll6),
                            Padding(
                                padding:
                                    getPadding(left: 34, top: 9, bottom: 6),
                                child: Text("lbl_processing".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtMetropolisMedium14Gray900)),
                            Padding(
                                padding:
                                    getPadding(left: 48, top: 8, bottom: 7),
                                child: Text("lbl_cancelled".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtMetropolisMedium14Gray900))
                          ])),
                      Padding(
                          padding: getPadding(left: 2, top: 30, right: 1),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(24));
                              },
                              itemCount: controller.myProfileMyOrdersModelObj
                                  .value.listorder1947034ItemList.length,
                              itemBuilder: (context, index) {
                                Listorder1947034ItemModel model = controller
                                    .myProfileMyOrdersModelObj
                                    .value
                                    .listorder1947034ItemList[index];
                                return Listorder1947034ItemWidget(model);
                              })))
                    ]))));
  }

  onTapArrowleft15() {
    Get.back();
  }
}
