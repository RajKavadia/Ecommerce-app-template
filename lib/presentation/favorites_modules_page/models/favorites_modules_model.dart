import 'package:get/get.dart';import 'products_item_model.dart';import 'tags1_item_model.dart';class FavoritesModulesModel {RxList<ProductsItemModel> productsItemList = RxList.generate(2,(index) => ProductsItemModel());

RxList<Tags1ItemModel> tags1ItemList = RxList.generate(4,(index) => Tags1ItemModel());

 }
