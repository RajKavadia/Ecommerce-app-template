import '../my_bag_promo_code_bottomsheet/widgets/listdiscountpercentage_item_widget.dart';
import 'controller/my_bag_promo_code_controller.dart';
import 'models/listdiscountpercentage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MyBagPromoCodeBottomsheet extends StatelessWidget {
  MyBagPromoCodeBottomsheet(this.controller);

  MyBagPromoCodeController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 14,
            right: 16,
            bottom: 14,
          ),
          decoration: AppDecoration.background.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL34,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: getHorizontalSize(
                    60,
                  ),
                  child: Divider(
                    thickness: getVerticalSize(
                      6,
                    ),
                    color: ColorConstant.gray500,
                  ),
                ),
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                controller: controller.textFieldSmalController,
                hintText: "msg_enter_your_promo".tr,
                margin: getMargin(
                  top: 32,
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
                  top: 32,
                ),
                child: Text(
                  "msg_your_promo_codes".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMetropolisSemiBold18,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 21,
                  bottom: 2,
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
                    itemCount: controller.myBagPromoCodeModelObj.value
                        .listdiscountpercentageItemList.length,
                    itemBuilder: (context, index) {
                      ListdiscountpercentageItemModel model = controller
                          .myBagPromoCodeModelObj
                          .value
                          .listdiscountpercentageItemList[index];
                      return ListdiscountpercentageItemWidget(
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
    );
  }
}
