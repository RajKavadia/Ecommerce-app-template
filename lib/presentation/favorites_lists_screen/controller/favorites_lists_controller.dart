import 'package:raj_s_application5/core/app_export.dart';import 'package:raj_s_application5/presentation/favorites_lists_screen/models/favorites_lists_model.dart';import 'package:raj_s_application5/widgets/custom_bottom_bar.dart';class FavoritesListsController extends GetxController {Rx<FavoritesListsModel> favoritesListsModelObj = FavoritesListsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
