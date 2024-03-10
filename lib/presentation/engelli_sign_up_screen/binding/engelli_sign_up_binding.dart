import 'package:engelsiz_spor/presentation/engelli_sign_up_screen/controller/engelli_sign_up_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EngelliSignUpScreen.
///
/// This class ensures that the EngelliSignUpController is created when the
/// EngelliSignUpScreen is first loaded.
class EngelliSignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EngelliSignUpController());
  }
}
