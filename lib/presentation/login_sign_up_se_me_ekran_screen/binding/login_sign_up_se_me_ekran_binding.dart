import 'package:engelsiz_spor/presentation/login_sign_up_se_me_ekran_screen/controller/login_sign_up_se_me_ekran_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginSignUpSeMeEkranScreen.
///
/// This class ensures that the LoginSignUpSeMeEkranController is created when the
/// LoginSignUpSeMeEkranScreen is first loaded.
class LoginSignUpSeMeEkranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginSignUpSeMeEkranController());
  }
}
