import 'package:engelsiz_spor/presentation/gonullu_profili_screen/controller/gonullu_profili_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GonulluProfiliScreen.
///
/// This class ensures that the GonulluProfiliController is created when the
/// GonulluProfiliScreen is first loaded.
class GonulluProfiliBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GonulluProfiliController());
  }
}
