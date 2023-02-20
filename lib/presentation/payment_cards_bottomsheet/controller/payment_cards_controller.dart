import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/presentation/payment_cards_bottomsheet/models/payment_cards_model.dart';
import 'package:flutter/material.dart';

class PaymentCardsController extends GetxController {
  TextEditingController textFieldOrdinaryInactiveController =
      TextEditingController();

  Rx<PaymentCardsModel> paymentCardsModelObj = PaymentCardsModel().obs;

  RxBool checkbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    textFieldOrdinaryInactiveController.dispose();
  }
}
