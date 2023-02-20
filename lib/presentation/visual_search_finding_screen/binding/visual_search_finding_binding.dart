import '../controller/visual_search_finding_controller.dart';
import 'package:get/get.dart';

class VisualSearchFindingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VisualSearchFindingController());
  }
}
