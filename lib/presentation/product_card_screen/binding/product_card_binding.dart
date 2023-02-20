import '../controller/product_card_controller.dart';
import 'package:get/get.dart';

class ProductCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductCardController());
  }
}
