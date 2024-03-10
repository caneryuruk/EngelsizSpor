import 'package:engelsiz_spor/presentation/engelli_log_in_screen/controller/engelli_log_in_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EngelliLogInScreen.
///
/// This class ensures that the EngelliLogInController is created when the
/// EngelliLogInScreen is first loaded.
class EngelliLogInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EngelliLogInController());
  }
}
