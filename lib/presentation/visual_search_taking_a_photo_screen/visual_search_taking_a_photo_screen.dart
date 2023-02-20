import 'controller/visual_search_taking_a_photo_controller.dart';import 'package:flutter/material.dart';import 'package:raj_s_application5/core/app_export.dart';import 'package:raj_s_application5/presentation/catalog_one_page/catalog_one_page.dart';import 'package:raj_s_application5/presentation/favorites_modules_page/favorites_modules_page.dart';import 'package:raj_s_application5/presentation/main_page/main_page.dart';import 'package:raj_s_application5/presentation/my_bag_page/my_bag_page.dart';import 'package:raj_s_application5/presentation/my_profile_my_orders_page/my_profile_my_orders_page.dart';import 'package:raj_s_application5/widgets/app_bar/appbar_image.dart';import 'package:raj_s_application5/widgets/app_bar/appbar_subtitle.dart';import 'package:raj_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:raj_s_application5/widgets/custom_bottom_bar.dart';class VisualSearchTakingAPhotoScreen extends GetWidget<VisualSearchTakingAPhotoController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(44), leadingWidth: 32, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 8, top: 8, bottom: 12), onTap: onTapArrowleft1), centerTitle: true, title: AppbarSubtitle(text: "msg_search_by_taking".tr), styleType: Style.bgShadowBlack90014), body: CustomImageView(imagePath: ImageConstant.imgD3bdd2cbe99a1c4, height: getVerticalSize(618), width: getHorizontalSize(375)), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}))); } 
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.mainPage; case BottomBarEnum.Shop: return AppRoutes.catalogOnePage; case BottomBarEnum.Bag: return AppRoutes.myBagPage; case BottomBarEnum.Favorites: return AppRoutes.favoritesModulesPage; case BottomBarEnum.Profile: return AppRoutes.myProfileMyOrdersPage; default: return "/";} } 
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.mainPage: return MainPage(); case AppRoutes.catalogOnePage: return CatalogOnePage(); case AppRoutes.myBagPage: return MyBagPage(); case AppRoutes.favoritesModulesPage: return FavoritesModulesPage(); case AppRoutes.myProfileMyOrdersPage: return MyProfileMyOrdersPage(); default: return DefaultWidget();} } 
onTapArrowleft1() { Get.back(); } 
 }
