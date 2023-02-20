import '../controller/rating_and_reviews_with_photo_controller.dart';
import 'package:get/get.dart';

class RatingAndReviewsWithPhotoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RatingAndReviewsWithPhotoController());
  }
}
