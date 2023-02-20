import '../controller/catalog_two_controller.dart';
import '../models/catalogtwo1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Catalogtwo1ItemWidget extends StatelessWidget {
  Catalogtwo1ItemWidget(this.catalogtwo1ItemModelObj);

  Catalogtwo1ItemModel catalogtwo1ItemModelObj;

  var controller = Get.find<CatalogTwoController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: getVerticalSize(
            205,
          ),
          width: getHorizontalSize(
            162,
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage184x162,
                height: getVerticalSize(
                  184,
                ),
                width: getHorizontalSize(
                  162,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgStarOrange300,
                      height: getSize(
                        14,
                      ),
                      width: getSize(
                        14,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStarOrange300,
                      height: getSize(
                        14,
                      ),
                      width: getSize(
                        14,
                      ),
                      margin: getMargin(
                        left: 1,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStarOrange300,
                      height: getSize(
                        14,
                      ),
                      width: getSize(
                        14,
                      ),
                      margin: getMargin(
                        left: 1,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStarOrange300,
                      height: getSize(
                        14,
                      ),
                      width: getSize(
                        14,
                      ),
                      margin: getMargin(
                        left: 1,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStar,
                      height: getSize(
                        14,
                      ),
                      width: getSize(
                        14,
                      ),
                      margin: getMargin(
                        left: 1,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 2,
                        top: 3,
                      ),
                      child: Text(
                        "lbl_3".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMetropolisRegular10Gray500,
                      ),
                    ),
                  ],
                ),
              ),
              CustomIconButton(
                height: 36,
                width: 36,
                margin: getMargin(
                  bottom: 5,
                ),
                alignment: Alignment.bottomRight,
                child: CustomImageView(
                  svgPath: ImageConstant.imgLocation,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            top: 6,
          ),
          child: Text(
            "lbl_mango".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtMetropolisRegular11,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 3,
          ),
          child: Text(
            "lbl_t_shirt_spanish".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtMetropolisSemiBold16,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 1,
            top: 5,
          ),
          child: Text(
            "lbl_9".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtMetropolisMedium14Gray900,
          ),
        ),
      ],
    );
  }
}
