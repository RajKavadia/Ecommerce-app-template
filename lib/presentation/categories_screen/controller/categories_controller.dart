import 'package:raj_s_application5/core/app_export.dart';import 'package:raj_s_application5/presentation/categories_screen/models/categories_model.dart';import 'package:raj_s_application5/widgets/custom_bottom_bar.dart';class CategoriesController extends GetxController {Rx<CategoriesModel> categoriesModelObj = CategoriesModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
