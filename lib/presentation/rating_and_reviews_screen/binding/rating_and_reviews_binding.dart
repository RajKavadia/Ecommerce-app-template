import '../controller/rating_and_reviews_controller.dart';
import 'package:get/get.dart';

class RatingAndReviewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RatingAndReviewsController());
  }
}
