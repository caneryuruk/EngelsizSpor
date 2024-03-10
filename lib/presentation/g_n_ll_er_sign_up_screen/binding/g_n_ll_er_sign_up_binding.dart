import 'package:engelsiz_spor/presentation/g_n_ll_er_sign_up_screen/controller/g_n_ll_er_sign_up_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GNLlErSignUpScreen.
///
/// This class ensures that the GNLlErSignUpController is created when the
/// GNLlErSignUpScreen is first loaded.
class GNLlErSignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GNLlErSignUpController());
  }
}
