import '../controller/visual_search_controller.dart';
import 'package:get/get.dart';

class VisualSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VisualSearchController());
  }
}
