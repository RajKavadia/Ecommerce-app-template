import 'package:raj_s_application5/core/app_export.dart';import 'package:raj_s_application5/presentation/my_bag_page/models/my_bag_model.dart';import 'package:flutter/material.dart';class MyBagController extends GetxController {MyBagController(this.myBagModelObj);

TextEditingController textFieldSmalController = TextEditingController();

Rx<MyBagModel> myBagModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); textFieldSmalController.dispose(); } 
 }
