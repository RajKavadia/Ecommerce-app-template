import '../controller/visual_search_crop_the_item_controller.dart';
import 'package:get/get.dart';

class VisualSearchCropTheItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VisualSearchCropTheItemController());
  }
}
