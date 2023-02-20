import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_button.dart';

import '../main_page/widgets/mainpage_item_widget.dart';
import 'controller/main_controller.dart';
import 'models/main_model.dart';
import 'models/mainpage_item_model.dart';

// ignore_for_file: must_be_immutable
class MainPage extends StatelessWidget {
  MainController controller = Get.put(MainController(MainModel().obs));

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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: getVerticalSize(
                    492,
                  ),
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage362x375,
                        height: getVerticalSize(
                          362,
                        ),
                        width: getHorizontalSize(
                          375,
                        ),
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getVerticalSize(
                            492,
                          ),
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage492x375,
                                height: getVerticalSize(
                                  492,
                                ),
                                width: getHorizontalSize(
                                  375,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: getPadding(
                                    left: 10,
                                    top: 32,
                                    right: 10,
                                    bottom: 32,
                                  ),
                                  decoration: AppDecoration
                                      .gradientBlack900baBlack90000,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: getHorizontalSize(
                                          190,
                                        ),
                                        margin: getMargin(
                                          left: 5,
                                          top: 206,
                                        ),
                                        child: Text(
                                          "lbl_fashion_sale".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtMetropolisBlack48,
                                        ),
                                      ),
                                      CustomButton(
                                        height: getVerticalSize(
                                          36,
                                        ),
                                        width: getHorizontalSize(
                                          160,
                                        ),
                                        text: "lbl_check".tr,
                                        margin: getMargin(
                                          top: 18,
                                        ),
                                        shape: ButtonShape.CircleBorder18,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 14,
                      top: 31,
                      right: 13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_new".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMetropolisBold34,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 20,
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_view_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMetropolisRegular11Gray900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 5,
                  ),
                  child: Text(
                    "msg_you_ve_never_seen".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMetropolisRegular11,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    288,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      padding: getPadding(
                        left: 14,
                        top: 22,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            17,
                          ),
                        );
                      },
                      itemCount:
                          controller.mainModelObj.value.mainpageItemList.length,
                      itemBuilder: (context, index) {
                        MainpageItemModel model = controller
                            .mainModelObj.value.mainpageItemList[index];
                        return MainpageItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
