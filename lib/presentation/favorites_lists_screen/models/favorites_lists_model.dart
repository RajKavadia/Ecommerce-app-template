import 'package:get/get.dart';import 'tags_item_model.dart';import 'listbrandname_item_model.dart';class FavoritesListsModel {RxList<TagsItemModel> tagsItemList = RxList.generate(4,(index) => TagsItemModel());

RxList<ListbrandnameItemModel> listbrandnameItemList = RxList.generate(4,(index) => ListbrandnameItemModel());

 }
