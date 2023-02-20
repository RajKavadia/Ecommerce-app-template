import '../controller/payment_cards_one_controller.dart';
import 'package:get/get.dart';

class PaymentCardsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentCardsOneController());
  }
}
