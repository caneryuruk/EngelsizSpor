import 'package:engelsiz_spor/presentation/engelli_profili_screen/controller/engelli_profili_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EngelliProfiliScreen.
///
/// This class ensures that the EngelliProfiliController is created when the
/// EngelliProfiliScreen is first loaded.
class EngelliProfiliBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EngelliProfiliController());
  }
}
