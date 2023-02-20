import 'controller/main_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/presentation/catalog_one_page/catalog_one_page.dart';
import 'package:raj_s_application5/presentation/favorites_modules_page/favorites_modules_page.dart';
import 'package:raj_s_application5/presentation/main_page/main_page.dart';
import 'package:raj_s_application5/presentation/my_bag_page/my_bag_page.dart';
import 'package:raj_s_application5/presentation/my_profile_my_orders_page/my_profile_my_orders_page.dart';
import 'package:raj_s_application5/widgets/custom_bottom_bar.dart';

class MainThreeScreen extends GetWidget<MainThreeController> {
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
                322,
              ),
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage4322x375,
                    height: getVerticalSize(
                      322,
                    ),
                    width: getHorizontalSize(
                      375,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: getPadding(
                        left: 18,
                        top: 29,
                        right: 18,
                        bottom: 29,
                      ),
                      decoration: AppDecoration.gradientBlack900baGray40000,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 229,
                            ),
                            child: Text(
                              "lbl_new_collection".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMetropolisBold34WhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: getHorizontalSize(
                      187,
                    ),
                    margin: getMargin(
                      bottom: 1,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            187,
                          ),
                          padding: getPadding(
                            left: 15,
                            top: 55,
                            right: 15,
                            bottom: 55,
                          ),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  140,
                                ),
                                margin: getMargin(
                                  bottom: 3,
                                ),
                                child: Text(
                                  "lbl_summer_sale".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMetropolisBold34Red700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getSize(
                            187,
                          ),
                          width: getSize(
                            187,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage2187x187,
                                height: getSize(
                                  187,
                                ),
                                width: getSize(
                                  187,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 13,
                                    bottom: 38,
                                  ),
                                  child: Text(
                                    "lbl_black".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtMetropolisBold34WhiteA700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      374,
                    ),
                    width: getHorizontalSize(
                      188,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage2374x188,
                          height: getVerticalSize(
                            374,
                          ),
                          width: getHorizontalSize(
                            188,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: getMargin(
                              bottom: 72,
                            ),
                            padding: getPadding(
                              left: 18,
                              top: 52,
                              right: 18,
                              bottom: 52,
                            ),
                            decoration:
                                AppDecoration.gradientBlack90000Black90000,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: getHorizontalSize(
                                    133,
                                  ),
                                  margin: getMargin(
                                    bottom: 27,
                                  ),
                                  child: Text(
                                    "lbl_men_s_hoodies".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtMetropolisBold34WhiteA700,
                                  ),
                                ),
                              ],
                            ),
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
