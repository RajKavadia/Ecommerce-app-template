import '../controller/my_bag_checkout_controller.dart';
import 'package:get/get.dart';

class MyBagCheckoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyBagCheckoutController());
  }
}
