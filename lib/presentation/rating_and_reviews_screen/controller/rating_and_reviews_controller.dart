import 'package:raj_s_application5/core/app_export.dart';import 'package:raj_s_application5/presentation/rating_and_reviews_screen/models/rating_and_reviews_model.dart';class RatingAndReviewsController extends GetxController {Rx<RatingAndReviewsModel> ratingAndReviewsModelObj = RatingAndReviewsModel().obs;

RxBool checkbox = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
