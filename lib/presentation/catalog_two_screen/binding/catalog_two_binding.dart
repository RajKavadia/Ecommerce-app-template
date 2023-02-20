import '../controller/catalog_two_controller.dart';
import 'package:get/get.dart';

class CatalogTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CatalogTwoController());
  }
}
