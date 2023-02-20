import '../controller/favorites_lists_controller.dart';
import 'package:get/get.dart';

class FavoritesListsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoritesListsController());
  }
}
