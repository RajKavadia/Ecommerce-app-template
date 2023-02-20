import '../controller/my_profile_my_orders_order_details_controller.dart';
import 'package:get/get.dart';

class MyProfileMyOrdersOrderDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyProfileMyOrdersOrderDetailsController());
  }
}
