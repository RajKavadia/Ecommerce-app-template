import '../controller/filters_list_controller.dart';
import 'package:get/get.dart';

class FiltersListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FiltersListController());
  }
}
