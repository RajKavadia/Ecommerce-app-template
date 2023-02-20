import 'package:raj_s_application5/core/app_export.dart';import 'package:raj_s_application5/presentation/add_shipping_address_screen/models/add_shipping_address_model.dart';import 'package:flutter/material.dart';class AddShippingAddressController extends GetxController {TextEditingController textFieldOrdinaryInactiveController = TextEditingController();

Rx<AddShippingAddressModel> addShippingAddressModelObj = AddShippingAddressModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); textFieldOrdinaryInactiveController.dispose(); } 
 }
