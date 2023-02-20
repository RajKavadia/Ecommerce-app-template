import 'package:raj_s_application5/core/app_export.dart';import 'package:raj_s_application5/presentation/filters_list_screen/models/filters_list_model.dart';import 'package:flutter/material.dart';class FiltersListController extends GetxController {TextEditingController searchBarInactiveController = TextEditingController();

Rx<FiltersListModel> filtersListModelObj = FiltersListModel().obs;

RxBool checkbox = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchBarInactiveController.dispose(); } 
 }
