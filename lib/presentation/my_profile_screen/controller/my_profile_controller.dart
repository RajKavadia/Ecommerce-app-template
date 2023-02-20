import 'package:raj_s_application5/core/app_export.dart';
import 'package:raj_s_application5/presentation/my_profile_screen/models/my_profile_model.dart';
import 'package:raj_s_application5/widgets/custom_bottom_bar.dart';

class MyProfileController extends GetxController {
  Rx<MyProfileModel> myProfileModelObj = MyProfileModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
