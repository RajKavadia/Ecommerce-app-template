import 'package:raj_s_application5/core/app_export.dart';import 'package:raj_s_application5/presentation/client_s_review_write_a_review_bottomsheet/models/client_s_review_write_a_review_model.dart';import 'package:flutter/material.dart';class ClientSReviewWriteAReviewController extends GetxController {TextEditingController inactivetextfieldreviewController = TextEditingController();

Rx<ClientSReviewWriteAReviewModel> clientSReviewWriteAReviewModelObj = ClientSReviewWriteAReviewModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); inactivetextfieldreviewController.dispose(); } 
 }
