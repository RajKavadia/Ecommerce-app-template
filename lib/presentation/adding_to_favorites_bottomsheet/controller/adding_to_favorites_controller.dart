import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/presentation/adding_to_favorites_bottomsheet/models/adding_to_favorites_model.dart';

class AddingToFavoritesController extends GetxController {
  Rx<AddingToFavoritesModel> addingToFavoritesModelObj =
      AddingToFavoritesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
