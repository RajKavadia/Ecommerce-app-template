import '../controller/my_bag_one_controller.dart';
import 'package:get/get.dart';

class MyBagOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyBagOneController());
  }
}
