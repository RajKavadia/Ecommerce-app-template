import '../controller/categories_controller.dart';
import '../models/categories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  CategoriesItemWidget(this.categoriesItemModelObj);

  CategoriesItemModel categoriesItemModelObj;

  var controller = Get.find<CategoriesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack90014.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: getPadding(
              left: 23,
              top: 39,
              bottom: 42,
            ),
            child: Text(
              "lbl_clothes".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtMetropolisSemiBold18,
            ),
          ),
          Container(
            height: getVerticalSize(
              100,
            ),
            width: getHorizontalSize(
              171,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage41,
                  height: getVerticalSize(
                    100,
                  ),
                  width: getHorizontalSize(
                    171,
                  ),
                  radius: BorderRadius.only(
                    topRight: Radius.circular(
                      getHorizontalSize(
                        8,
                      ),
                    ),
                    bottomRight: Radius.circular(
                      getHorizontalSize(
                        8,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage100x171,
                  height: getVerticalSize(
                    100,
                  ),
                  width: getHorizontalSize(
                    171,
                  ),
                  radius: BorderRadius.only(
                    topRight: Radius.circular(
                      getHorizontalSize(
                        8,
                      ),
                    ),
                    bottomRight: Radius.circular(
                      getHorizontalSize(
                        8,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
