import 'package:raj_s_application5/core/app_export.dart';import 'package:raj_s_application5/presentation/my_bag_promo_code_bottomsheet/models/my_bag_promo_code_model.dart';import 'package:flutter/material.dart';class MyBagPromoCodeController extends GetxController {TextEditingController textFieldSmalController = TextEditingController();

Rx<MyBagPromoCodeModel> myBagPromoCodeModelObj = MyBagPromoCodeModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); textFieldSmalController.dispose(); } 
 }
