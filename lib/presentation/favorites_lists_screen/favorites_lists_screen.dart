import '../favorites_lists_screen/widgets/listbrandname_item_widget.dart';
import '../favorites_lists_screen/widgets/tags_item_widget.dart';
import 'controller/favorites_lists_controller.dart';
import 'models/listbrandname_item_model.dart';
import 'models/tags_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/presentation/catalog_one_page/catalog_one_page.dart';
import 'package:raj_s_application5/presentation/favorites_modules_page/favorites_modules_page.dart';
import 'package:raj_s_application5/presentation/main_page/main_page.dart';
import 'package:raj_s_application5/presentation/my_bag_page/my_bag_page.dart';
import 'package:raj_s_application5/presentation/my_profile_my_orders_page/my_profile_my_orders_page.dart';
import 'package:raj_s_application5/widgets/custom_bottom_bar.dart';

class FavoritesListsScreen extends GetWidget<FavoritesListsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                192,
              ),
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        192,
                      ),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: ColorConstant.gray50,
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.black9001e,
                            spreadRadius: getHorizontalSize(
                              2,
                            ),
                            blurRadius: getHorizontalSize(
                              2,
                            ),
                            offset: Offset(
                              0,
                              4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
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
                          margin: getMargin(
                            right: 89,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 27,
                          ),
                          child: Text(
                            "lbl_favorites".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMetropolisBold34,
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            44,
                          ),
                          child: Obx(
                            () => ListView.separated(
                              padding: getPadding(
                                left: 2,
                                top: 14,
                              ),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    12,
                                  ),
                                );
                              },
                              itemCount: controller.favoritesListsModelObj.value
                                  .tagsItemList.length,
                              itemBuilder: (context, index) {
                                TagsItemModel model = controller
                                    .favoritesListsModelObj
                                    .value
                                    .tagsItemList[index];
                                return TagsItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 2,
                            top: 18,
                            right: 94,
                          ),
                          decoration: AppDecoration.background,
                          child: Row(
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
                                  style: AppStyle.txtMetropolisRegular11Gray900,
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
                                  style: AppStyle.txtMetropolisRegular11Gray900,
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
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                top: 16,
                right: 16,
              ),
              child: Obx(
                () => ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: getVerticalSize(
                        16,
                      ),
                    );
                  },
                  itemCount: controller.favoritesListsModelObj.value
                      .listbrandnameItemList.length,
                  itemBuilder: (context, index) {
                    ListbrandnameItemModel model = controller
                        .favoritesListsModelObj
                        .value
                        .listbrandnameItemList[index];
                    return ListbrandnameItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.mainPage;
      case BottomBarEnum.Shop:
        return AppRoutes.catalogOnePage;
      case BottomBarEnum.Bag:
        return AppRoutes.myBagPage;
      case BottomBarEnum.Favorites:
        return AppRoutes.favoritesModulesPage;
      case BottomBarEnum.Profile:
        return AppRoutes.myProfileMyOrdersPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainPage:
        return MainPage();
      case AppRoutes.catalogOnePage:
        return CatalogOnePage();
      case AppRoutes.myBagPage:
        return MyBagPage();
      case AppRoutes.favoritesModulesPage:
        return FavoritesModulesPage();
      case AppRoutes.myProfileMyOrdersPage:
        return MyProfileMyOrdersPage();
      default:
        return DefaultWidget();
    }
  }
}
