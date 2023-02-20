import 'package:get/get.dart';import 'catalogtwo_item_model.dart';import 'catalogtwo1_item_model.dart';class CatalogTwoModel {RxList<CatalogtwoItemModel> catalogtwoItemList = RxList.generate(4,(index) => CatalogtwoItemModel());

RxList<Catalogtwo1ItemModel> catalogtwo1ItemList = RxList.generate(4,(index) => Catalogtwo1ItemModel());

 }
