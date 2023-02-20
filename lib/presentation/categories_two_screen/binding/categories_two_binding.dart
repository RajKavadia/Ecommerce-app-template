import '../controller/categories_two_controller.dart';
import 'package:get/get.dart';

class CategoriesTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoriesTwoController());
  }
}
