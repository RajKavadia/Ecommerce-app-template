import '../my_bag_page/widgets/mybag_item_widget.dart';
import 'controller/my_bag_controller.dart';
import 'models/my_bag_model.dart';
import 'models/mybag_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_button.dart';
import 'package:raj_s_application5/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MyBagPage extends StatelessWidget {
  MyBagController controller = Get.put(MyBagController(MyBagModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.background,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: getPadding(
                  left: 11,
                  top: 8,
                  right: 11,
                  bottom: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgSearchGray900,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      alignment: Alignment.centerRight,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 3,
                        top: 31,
                      ),
                      child: Text(
                        "lbl_my_bag".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMetropolisBold34,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 24,
                        right: 2,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                24,
                              ),
                            );
                          },
                          itemCount: controller
                              .myBagModelObj.value.mybagItemList.length,
                          itemBuilder: (context, index) {
                            MybagItemModel model = controller
                                .myBagModelObj.value.mybagItemList[index];
                            return MybagItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: controller.textFieldSmalController,
                      hintText: "msg_enter_your_promo".tr,
                      margin: getMargin(
                        left: 5,
                        top: 25,
                        right: 5,
                      ),
                      shape: TextFormFieldShape.CustomBorderLR35,
                      padding: TextFormFieldPadding.PaddingT10,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                        padding: getPadding(
                          all: 6,
                        ),
                        margin: getMargin(
                          left: 12,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray900,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              18,
                            ),
                          ),
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgArrowrightWhiteA700,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          36,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 28,
                        right: 4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                              bottom: 2,
                            ),
                            child: Text(
                              "lbl_total_amount".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMetropolisMedium14Gray500,
                            ),
                          ),
                          Text(
                            "lbl_124".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMetropolisSemiBold18,
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        48,
                      ),
                      text: "lbl_check_out".tr,
                      margin: getMargin(
                        left: 5,
                        top: 27,
                        right: 5,
                        bottom: 5,
                      ),
                      padding: ButtonPadding.PaddingAll16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
