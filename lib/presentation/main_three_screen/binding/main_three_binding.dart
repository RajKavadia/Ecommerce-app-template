import '../controller/main_three_controller.dart';
import 'package:get/get.dart';

class MainThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainThreeController());
  }
}
