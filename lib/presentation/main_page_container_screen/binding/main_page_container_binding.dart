import '../controller/main_page_container_controller.dart';
import 'package:get/get.dart';

class MainPageContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainPageContainerController());
  }
}
