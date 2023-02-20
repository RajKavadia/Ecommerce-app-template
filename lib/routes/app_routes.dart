import 'package:raj_s_application5/presentation/sign_up_page_screen/sign_up_page_screen.dart';
import 'package:raj_s_application5/presentation/sign_up_page_screen/binding/sign_up_page_binding.dart';
import 'package:raj_s_application5/presentation/login_page_screen/login_page_screen.dart';
import 'package:raj_s_application5/presentation/login_page_screen/binding/login_page_binding.dart';
import 'package:raj_s_application5/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:raj_s_application5/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:raj_s_application5/presentation/visual_search_screen/visual_search_screen.dart';
import 'package:raj_s_application5/presentation/visual_search_screen/binding/visual_search_binding.dart';
import 'package:raj_s_application5/presentation/visual_search_taking_a_photo_screen/visual_search_taking_a_photo_screen.dart';
import 'package:raj_s_application5/presentation/visual_search_taking_a_photo_screen/binding/visual_search_taking_a_photo_binding.dart';
import 'package:raj_s_application5/presentation/visual_search_crop_the_item_screen/visual_search_crop_the_item_screen.dart';
import 'package:raj_s_application5/presentation/visual_search_crop_the_item_screen/binding/visual_search_crop_the_item_binding.dart';
import 'package:raj_s_application5/presentation/visual_search_finding_screen/visual_search_finding_screen.dart';
import 'package:raj_s_application5/presentation/visual_search_finding_screen/binding/visual_search_finding_binding.dart';
import 'package:raj_s_application5/presentation/main_page_container_screen/main_page_container_screen.dart';
import 'package:raj_s_application5/presentation/main_page_container_screen/binding/main_page_container_binding.dart';
import 'package:raj_s_application5/presentation/main_two_screen/main_two_screen.dart';
import 'package:raj_s_application5/presentation/main_two_screen/binding/main_two_binding.dart';
import 'package:raj_s_application5/presentation/main_three_screen/main_three_screen.dart';
import 'package:raj_s_application5/presentation/main_three_screen/binding/main_three_binding.dart';
import 'package:raj_s_application5/presentation/categories_screen/categories_screen.dart';
import 'package:raj_s_application5/presentation/categories_screen/binding/categories_binding.dart';
import 'package:raj_s_application5/presentation/categories_two_screen/categories_two_screen.dart';
import 'package:raj_s_application5/presentation/categories_two_screen/binding/categories_two_binding.dart';
import 'package:raj_s_application5/presentation/catalog_two_screen/catalog_two_screen.dart';
import 'package:raj_s_application5/presentation/catalog_two_screen/binding/catalog_two_binding.dart';
import 'package:raj_s_application5/presentation/filters_screen/filters_screen.dart';
import 'package:raj_s_application5/presentation/filters_screen/binding/filters_binding.dart';
import 'package:raj_s_application5/presentation/filters_list_screen/filters_list_screen.dart';
import 'package:raj_s_application5/presentation/filters_list_screen/binding/filters_list_binding.dart';
import 'package:raj_s_application5/presentation/product_card_screen/product_card_screen.dart';
import 'package:raj_s_application5/presentation/product_card_screen/binding/product_card_binding.dart';
import 'package:raj_s_application5/presentation/rating_and_reviews_screen/rating_and_reviews_screen.dart';
import 'package:raj_s_application5/presentation/rating_and_reviews_screen/binding/rating_and_reviews_binding.dart';
import 'package:raj_s_application5/presentation/rating_and_reviews_with_photo_screen/rating_and_reviews_with_photo_screen.dart';
import 'package:raj_s_application5/presentation/rating_and_reviews_with_photo_screen/binding/rating_and_reviews_with_photo_binding.dart';
import 'package:raj_s_application5/presentation/favorites_lists_screen/favorites_lists_screen.dart';
import 'package:raj_s_application5/presentation/favorites_lists_screen/binding/favorites_lists_binding.dart';
import 'package:raj_s_application5/presentation/my_bag_one_screen/my_bag_one_screen.dart';
import 'package:raj_s_application5/presentation/my_bag_one_screen/binding/my_bag_one_binding.dart';
import 'package:raj_s_application5/presentation/my_bag_checkout_screen/my_bag_checkout_screen.dart';
import 'package:raj_s_application5/presentation/my_bag_checkout_screen/binding/my_bag_checkout_binding.dart';
import 'package:raj_s_application5/presentation/payment_cards_one_screen/payment_cards_one_screen.dart';
import 'package:raj_s_application5/presentation/payment_cards_one_screen/binding/payment_cards_one_binding.dart';
import 'package:raj_s_application5/presentation/shipping_addresses_screen/shipping_addresses_screen.dart';
import 'package:raj_s_application5/presentation/shipping_addresses_screen/binding/shipping_addresses_binding.dart';
import 'package:raj_s_application5/presentation/add_shipping_address_screen/add_shipping_address_screen.dart';
import 'package:raj_s_application5/presentation/add_shipping_address_screen/binding/add_shipping_address_binding.dart';
import 'package:raj_s_application5/presentation/success_screen/success_screen.dart';
import 'package:raj_s_application5/presentation/success_screen/binding/success_binding.dart';
import 'package:raj_s_application5/presentation/success_one_screen/success_one_screen.dart';
import 'package:raj_s_application5/presentation/success_one_screen/binding/success_one_binding.dart';
import 'package:raj_s_application5/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:raj_s_application5/presentation/my_profile_screen/binding/my_profile_binding.dart';
import 'package:raj_s_application5/presentation/my_profile_my_orders_order_details_screen/my_profile_my_orders_order_details_screen.dart';
import 'package:raj_s_application5/presentation/my_profile_my_orders_order_details_screen/binding/my_profile_my_orders_order_details_binding.dart';
import 'package:raj_s_application5/presentation/my_profile_settings_screen/my_profile_settings_screen.dart';
import 'package:raj_s_application5/presentation/my_profile_settings_screen/binding/my_profile_settings_binding.dart';
import 'package:raj_s_application5/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:raj_s_application5/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String visualSearchScreen = '/visual_search_screen';

  static const String visualSearchTakingAPhotoScreen =
      '/visual_search_taking_a_photo_screen';

  static const String visualSearchCropTheItemScreen =
      '/visual_search_crop_the_item_screen';

  static const String visualSearchFindingScreen =
      '/visual_search_finding_screen';

  static const String mainPage = '/main_page';

  static const String mainPageContainerScreen = '/main_page_container_screen';

  static const String mainTwoScreen = '/main_two_screen';

  static const String mainThreeScreen = '/main_three_screen';

  static const String categoriesScreen = '/categories_screen';

  static const String categoriesTwoScreen = '/categories_two_screen';

  static const String catalogOnePage = '/catalog_one_page';

  static const String catalogTwoScreen = '/catalog_two_screen';

  static const String filtersScreen = '/filters_screen';

  static const String filtersListScreen = '/filters_list_screen';

  static const String productCardScreen = '/product_card_screen';

  static const String ratingAndReviewsScreen = '/rating_and_reviews_screen';

  static const String ratingAndReviewsWithPhotoScreen =
      '/rating_and_reviews_with_photo_screen';

  static const String favoritesListsScreen = '/favorites_lists_screen';

  static const String favoritesModulesPage = '/favorites_modules_page';

  static const String myBagPage = '/my_bag_page';

  static const String myBagOneScreen = '/my_bag_one_screen';

  static const String myBagCheckoutScreen = '/my_bag_checkout_screen';

  static const String paymentCardsOneScreen = '/payment_cards_one_screen';

  static const String shippingAddressesScreen = '/shipping_addresses_screen';

  static const String addShippingAddressScreen = '/add_shipping_address_screen';

  static const String successScreen = '/success_screen';

  static const String successOneScreen = '/success_one_screen';

  static const String myProfileScreen = '/my_profile_screen';

  static const String myProfileMyOrdersPage = '/my_profile_my_orders_page';

  static const String myProfileMyOrdersOrderDetailsScreen =
      '/my_profile_my_orders_order_details_screen';

  static const String myProfileSettingsScreen = '/my_profile_settings_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: signUpPageScreen,
      page: () => SignUpPageScreen(),
      bindings: [
        SignUpPageBinding(),
      ],
    ),
    GetPage(
      name: loginPageScreen,
      page: () => LoginPageScreen(),
      bindings: [
        LoginPageBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: visualSearchScreen,
      page: () => VisualSearchScreen(),
      bindings: [
        VisualSearchBinding(),
      ],
    ),
    GetPage(
      name: visualSearchTakingAPhotoScreen,
      page: () => VisualSearchTakingAPhotoScreen(),
      bindings: [
        VisualSearchTakingAPhotoBinding(),
      ],
    ),
    GetPage(
      name: visualSearchCropTheItemScreen,
      page: () => VisualSearchCropTheItemScreen(),
      bindings: [
        VisualSearchCropTheItemBinding(),
      ],
    ),
    GetPage(
      name: visualSearchFindingScreen,
      page: () => VisualSearchFindingScreen(),
      bindings: [
        VisualSearchFindingBinding(),
      ],
    ),
    GetPage(
      name: mainPageContainerScreen,
      page: () => MainPageContainerScreen(),
      bindings: [
        MainPageContainerBinding(),
      ],
    ),
    GetPage(
      name: mainTwoScreen,
      page: () => MainTwoScreen(),
      bindings: [
        MainTwoBinding(),
      ],
    ),
    GetPage(
      name: mainThreeScreen,
      page: () => MainThreeScreen(),
      bindings: [
        MainThreeBinding(),
      ],
    ),
    GetPage(
      name: categoriesScreen,
      page: () => CategoriesScreen(),
      bindings: [
        CategoriesBinding(),
      ],
    ),
    GetPage(
      name: categoriesTwoScreen,
      page: () => CategoriesTwoScreen(),
      bindings: [
        CategoriesTwoBinding(),
      ],
    ),
    GetPage(
      name: catalogTwoScreen,
      page: () => CatalogTwoScreen(),
      bindings: [
        CatalogTwoBinding(),
      ],
    ),
    GetPage(
      name: filtersScreen,
      page: () => FiltersScreen(),
      bindings: [
        FiltersBinding(),
      ],
    ),
    GetPage(
      name: filtersListScreen,
      page: () => FiltersListScreen(),
      bindings: [
        FiltersListBinding(),
      ],
    ),
    GetPage(
      name: productCardScreen,
      page: () => ProductCardScreen(),
      bindings: [
        ProductCardBinding(),
      ],
    ),
    GetPage(
      name: ratingAndReviewsScreen,
      page: () => RatingAndReviewsScreen(),
      bindings: [
        RatingAndReviewsBinding(),
      ],
    ),
    GetPage(
      name: ratingAndReviewsWithPhotoScreen,
      page: () => RatingAndReviewsWithPhotoScreen(),
      bindings: [
        RatingAndReviewsWithPhotoBinding(),
      ],
    ),
    GetPage(
      name: favoritesListsScreen,
      page: () => FavoritesListsScreen(),
      bindings: [
        FavoritesListsBinding(),
      ],
    ),
    GetPage(
      name: myBagOneScreen,
      page: () => MyBagOneScreen(),
      bindings: [
        MyBagOneBinding(),
      ],
    ),
    GetPage(
      name: myBagCheckoutScreen,
      page: () => MyBagCheckoutScreen(),
      bindings: [
        MyBagCheckoutBinding(),
      ],
    ),
    GetPage(
      name: paymentCardsOneScreen,
      page: () => PaymentCardsOneScreen(),
      bindings: [
        PaymentCardsOneBinding(),
      ],
    ),
    GetPage(
      name: shippingAddressesScreen,
      page: () => ShippingAddressesScreen(),
      bindings: [
        ShippingAddressesBinding(),
      ],
    ),
    GetPage(
      name: addShippingAddressScreen,
      page: () => AddShippingAddressScreen(),
      bindings: [
        AddShippingAddressBinding(),
      ],
    ),
    GetPage(
      name: successScreen,
      page: () => SuccessScreen(),
      bindings: [
        SuccessBinding(),
      ],
    ),
    GetPage(
      name: successOneScreen,
      page: () => SuccessOneScreen(),
      bindings: [
        SuccessOneBinding(),
      ],
    ),
    GetPage(
      name: myProfileScreen,
      page: () => MyProfileScreen(),
      bindings: [
        MyProfileBinding(),
      ],
    ),
    GetPage(
      name: myProfileMyOrdersOrderDetailsScreen,
      page: () => MyProfileMyOrdersOrderDetailsScreen(),
      bindings: [
        MyProfileMyOrdersOrderDetailsBinding(),
      ],
    ),
    GetPage(
      name: myProfileSettingsScreen,
      page: () => MyProfileSettingsScreen(),
      bindings: [
        MyProfileSettingsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SignUpPageScreen(),
      bindings: [
        SignUpPageBinding(),
      ],
    )
  ];
}
