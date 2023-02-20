import '../controller/visual_search_taking_a_photo_controller.dart';
import 'package:get/get.dart';

class VisualSearchTakingAPhotoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VisualSearchTakingAPhotoController());
  }
}
