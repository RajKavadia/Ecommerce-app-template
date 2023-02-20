import '../main_two_screen/widgets/listcondition_item_widget.dart';
import '../main_two_screen/widgets/listlanguage_item_widget.dart';
import 'controller/main_two_controller.dart';
import 'models/listcondition_item_model.dart';
import 'models/listlanguage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/presentation/catalog_one_page/catalog_one_page.dart';
import 'package:raj_s_application5/presentation/favorites_modules_page/favorites_modules_page.dart';
import 'package:raj_s_application5/presentation/main_page/main_page.dart';
import 'package:raj_s_application5/presentation/my_bag_page/my_bag_page.dart';
import 'package:raj_s_application5/presentation/my_profile_my_orders_page/my_profile_my_orders_page.dart';
import 'package:raj_s_application5/widgets/custom_bottom_bar.dart';

class MainTwoScreen extends GetWidget<MainTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                152,
              ),
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage152x375,
                    height: getVerticalSize(
                      152,
                    ),
                    width: getHorizontalSize(
                      375,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        152,
                      ),
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPexelsphoto911677,
                            height: getVerticalSize(
                              152,
                            ),
                            width: getHorizontalSize(
                              375,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 16,
                                bottom: 27,
                              ),
                              child: Text(
                                "lbl_street_clothes".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMetropolisBlack34,
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
                  left: 18,
                  top: 35,
                  right: 14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_sale".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMetropolisBold34,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 15,
                        bottom: 7,
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
                left: 18,
                top: 6,
              ),
              child: Text(
                "msg_super_summer_sale".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtMetropolisRegular11,
              ),
            ),
            Container(
              height: getVerticalSize(
                287,
              ),
              child: Obx(
                () => ListView.separated(
                  padding: getPadding(
                    left: 16,
                    top: 21,
                  ),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: getVerticalSize(
                        19,
                      ),
                    );
                  },
                  itemCount: controller
                      .mainTwoModelObj.value.listlanguageItemList.length,
                  itemBuilder: (context, index) {
                    ListlanguageItemModel model = controller
                        .mainTwoModelObj.value.listlanguageItemList[index];
                    return ListlanguageItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 16,
                  top: 38,
                  right: 14,
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
                left: 18,
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
                    left: 17,
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
                  itemCount: controller
                      .mainTwoModelObj.value.listconditionItemList.length,
                  itemBuilder: (context, index) {
                    ListconditionItemModel model = controller
                        .mainTwoModelObj.value.listconditionItemList[index];
                    return ListconditionItemWidget(
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
