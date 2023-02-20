import '../my_bag_one_screen/widgets/productcards_item_widget.dart';
import 'controller/my_bag_one_controller.dart';
import 'models/productcards_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/presentation/catalog_one_page/catalog_one_page.dart';
import 'package:raj_s_application5/presentation/favorites_modules_page/favorites_modules_page.dart';
import 'package:raj_s_application5/presentation/main_page/main_page.dart';
import 'package:raj_s_application5/presentation/my_bag_page/my_bag_page.dart';
import 'package:raj_s_application5/presentation/my_profile_my_orders_page/my_profile_my_orders_page.dart';
import 'package:raj_s_application5/widgets/custom_bottom_bar.dart';
import 'package:raj_s_application5/widgets/custom_button.dart';

class MyBagOneScreen extends GetWidget<MyBagOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
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
              Container(
                height: getVerticalSize(
                  377,
                ),
                width: getHorizontalSize(
                  346,
                ),
                margin: getMargin(
                  left: 5,
                  top: 7,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          top: 17,
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
                            itemCount: controller.myBagOneModelObj.value
                                .productcardsItemList.length,
                            itemBuilder: (context, index) {
                              ProductcardsItemModel model = controller
                                  .myBagOneModelObj
                                  .value
                                  .productcardsItemList[index];
                              return ProductcardsItemWidget(
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
                        margin: getMargin(
                          right: 36,
                        ),
                        padding: getPadding(
                          top: 19,
                          bottom: 19,
                        ),
                        decoration: AppDecoration.outlineBlack90023.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "msg_add_to_favorites2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMetropolisRegular11Gray900,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 17,
                              ),
                              child: SizedBox(
                                width: getHorizontalSize(
                                  170,
                                ),
                                child: Divider(
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: ColorConstant.gray50063,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 16,
                              ),
                              child: Text(
                                "msg_delete_from_the".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMetropolisRegular11Gray900,
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
                margin: getMargin(
                  left: 5,
                  top: 25,
                  right: 5,
                ),
                padding: getPadding(
                  left: 5,
                  top: 6,
                  right: 5,
                  bottom: 6,
                ),
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 15,
                        top: 5,
                        bottom: 4,
                      ),
                      child: Text(
                        "lbl_mypromocode2020".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMetropolisMedium14Gray900,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgPlus,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                    ),
                  ],
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
                      "lbl_112".tr,
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
