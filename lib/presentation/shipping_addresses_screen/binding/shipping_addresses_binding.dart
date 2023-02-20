import '../controller/shipping_addresses_controller.dart';
import 'package:get/get.dart';

class ShippingAddressesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShippingAddressesController());
  }
}
