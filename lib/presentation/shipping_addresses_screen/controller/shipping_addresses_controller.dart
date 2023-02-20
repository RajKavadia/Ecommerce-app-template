import 'package:raj_s_application5/core/app_export.dart';import 'package:raj_s_application5/presentation/shipping_addresses_screen/models/shipping_addresses_model.dart';class ShippingAddressesController extends GetxController {Rx<ShippingAddressesModel> shippingAddressesModelObj = ShippingAddressesModel().obs;

RxBool checkbox = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
