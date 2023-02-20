import 'package:raj_s_application5/core/app_export.dart';import 'package:raj_s_application5/presentation/rating_and_reviews_with_photo_screen/models/rating_and_reviews_with_photo_model.dart';import 'package:raj_s_application5/widgets/custom_bottom_bar.dart';class RatingAndReviewsWithPhotoController extends GetxController {Rx<RatingAndReviewsWithPhotoModel> ratingAndReviewsWithPhotoModelObj = RatingAndReviewsWithPhotoModel().obs;

RxBool checkbox = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
