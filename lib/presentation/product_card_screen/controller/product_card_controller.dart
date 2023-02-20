import 'package:raj_s_application5/core/app_export.dart';import 'package:raj_s_application5/presentation/product_card_screen/models/product_card_model.dart';import 'package:flutter/material.dart';class ProductCardController extends GetxController {TextEditingController dropdownUnselectedErrorController = TextEditingController();

TextEditingController dropdownSelectedController = TextEditingController();

Rx<ProductCardModel> productCardModelObj = ProductCardModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); dropdownUnselectedErrorController.dispose(); dropdownSelectedController.dispose(); } 
 }
