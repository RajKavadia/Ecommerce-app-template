import 'package:get/get.dart';import 'listlanguage_item_model.dart';import 'listcondition_item_model.dart';class MainTwoModel {RxList<ListlanguageItemModel> listlanguageItemList = RxList.generate(3,(index) => ListlanguageItemModel());

RxList<ListconditionItemModel> listconditionItemList = RxList.generate(3,(index) => ListconditionItemModel());

 }
