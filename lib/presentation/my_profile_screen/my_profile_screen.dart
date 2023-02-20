import 'controller/my_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/presentation/catalog_one_page/catalog_one_page.dart';
import 'package:raj_s_application5/presentation/favorites_modules_page/favorites_modules_page.dart';
import 'package:raj_s_application5/presentation/main_page/main_page.dart';
import 'package:raj_s_application5/presentation/my_bag_page/my_bag_page.dart';
import 'package:raj_s_application5/presentation/my_profile_my_orders_page/my_profile_my_orders_page.dart';
import 'package:raj_s_application5/widgets/custom_bottom_bar.dart';

class MyProfileScreen extends GetWidget<MyProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          padding: getPadding(
            top: 8,
            bottom: 8,
          ),
          child: Column(
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
                  right: 11,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 14,
                    top: 30,
                  ),
                  child: Text(
                    "lbl_my_profile".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMetropolisBold34,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 17,
                    top: 24,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage64x64,
                        height: getSize(
                          64,
                        ),
                        width: getSize(
                          64,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            32,
                          ),
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          167,
                        ),
                        margin: getMargin(
                          left: 18,
                          bottom: 25,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_matilda_brown".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMetropolisSemiBold18,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 1,
                                top: 6,
                              ),
                              child: Text(
                                "msg_matildabrown_mail_com".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMetropolisMedium14Gray500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 46,
                  right: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_my_orders".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMetropolisSemiBold16,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 8,
                          ),
                          child: Text(
                            "msg_already_have_12".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMetropolisRegular11,
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightGray500,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 5,
                        bottom: 6,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Divider(
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray5005e,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 18,
                  right: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "msg_shipping_addresses2".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMetropolisSemiBold16,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 8,
                          ),
                          child: Text(
                            "lbl_3_ddresses".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMetropolisRegular11,
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightGray500,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 5,
                        bottom: 5,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 17,
                ),
                child: Divider(
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray5005e,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 19,
                  right: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_payment_methods".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMetropolisSemiBold16,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 6,
                          ),
                          child: Text(
                            "lbl_visa_34".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMetropolisRegular11,
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightGray500,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 4,
                        bottom: 5,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 17,
                ),
                child: Divider(
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray5005e,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 18,
                  right: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_promocodes".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMetropolisSemiBold16,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Text(
                            "msg_you_have_special".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMetropolisRegular11,
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightGray500,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 5,
                        bottom: 6,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Divider(
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray5005e,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 19,
                  right: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_my_reviews".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMetropolisSemiBold16,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 7,
                          ),
                          child: Text(
                            "msg_reviews_for_4_items".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMetropolisRegular11,
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightGray500,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 4,
                        bottom: 5,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 17,
                ),
                child: Divider(
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray5005e,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 19,
                  right: 8,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_settings".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMetropolisSemiBold16,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 7,
                          ),
                          child: Text(
                            "msg_notifications_password".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMetropolisRegular11,
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightGray500,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        top: 4,
                        bottom: 6,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
