import 'package:engelsiz_spor/presentation/gonullu_log_in_screen/controller/gonullu_log_in_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GonulluLogInScreen.
///
/// This class ensures that the GonulluLogInController is created when the
/// GonulluLogInScreen is first loaded.
class GonulluLogInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GonulluLogInController());
  }
}
