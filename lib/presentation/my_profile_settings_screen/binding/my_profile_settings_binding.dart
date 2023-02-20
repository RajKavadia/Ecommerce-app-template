import '../controller/my_profile_settings_controller.dart';
import 'package:get/get.dart';

class MyProfileSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyProfileSettingsController());
  }
}
