import '../favorites_modules_page/widgets/products_item_widget.dart';
import '../favorites_modules_page/widgets/tags1_item_widget.dart';
import 'controller/favorites_modules_controller.dart';
import 'models/favorites_modules_model.dart';
import 'models/products_item_model.dart';
import 'models/tags1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:raj_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:raj_s_application5/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class FavoritesModulesPage extends StatelessWidget {
  FavoritesModulesController controller =
      Get.put(FavoritesModulesController(FavoritesModulesModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          height: getVerticalSize(
            685,
          ),
          width: double.maxFinite,
          decoration: AppDecoration.background,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 15,
                    top: 96,
                    right: 15,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            21,
                          ),
                        );
                      },
                      itemCount: controller.favoritesModulesModelObj.value
                          .productsItemList.length,
                      itemBuilder: (context, index) {
                        ProductsItemModel model = controller
                            .favoritesModulesModelObj
                            .value
                            .productsItemList[index];
                        return ProductsItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: getVerticalSize(
                    136,
                  ),
                  width: getHorizontalSize(
                    452,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: AppDecoration.outlineBlack9001e,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomAppBar(
                                height: getVerticalSize(
                                  44,
                                ),
                                centerTitle: true,
                                title: AppbarSubtitle(
                                  text: "lbl_favorites".tr,
                                ),
                                actions: [
                                  AppbarImage(
                                    height: getSize(
                                      24,
                                    ),
                                    width: getSize(
                                      24,
                                    ),
                                    svgPath: ImageConstant.imgSearchGray900,
                                    margin: getMargin(
                                      left: 11,
                                      top: 8,
                                      right: 11,
                                      bottom: 12,
                                    ),
                                  ),
                                ],
                                styleType: Style.bgFillGray50,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 14,
                                  top: 56,
                                  right: 13,
                                  bottom: 12,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgSort,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 7,
                                        top: 5,
                                        bottom: 7,
                                      ),
                                      child: Text(
                                        "lbl_filters".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMetropolisRegular11Gray900,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgSortGray900,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                      margin: getMargin(
                                        left: 61,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 6,
                                        top: 6,
                                        bottom: 6,
                                      ),
                                      child: Text(
                                        "msg_price_lowest_to".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMetropolisRegular11Gray900,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgGrid,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                      margin: getMargin(
                                        left: 63,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getVerticalSize(
                            136,
                          ),
                          child: Obx(
                            () => ListView.separated(
                              padding: getPadding(
                                left: 15,
                                top: 51,
                                bottom: 55,
                              ),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    12,
                                  ),
                                );
                              },
                              itemCount: controller.favoritesModulesModelObj
                                  .value.tags1ItemList.length,
                              itemBuilder: (context, index) {
                                Tags1ItemModel model = controller
                                    .favoritesModulesModelObj
                                    .value
                                    .tags1ItemList[index];
                                return Tags1ItemWidget(
                                  model,
                                );
                              },
                            ),
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
      ),
    );
  }
}
