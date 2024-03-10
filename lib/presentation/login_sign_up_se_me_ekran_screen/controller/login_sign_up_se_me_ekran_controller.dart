import '../../../core/app_export.dart';
import '../models/login_sign_up_se_me_ekran_model.dart';

/// A controller class for the LoginSignUpSeMeEkranScreen.
///
/// This class manages the state of the LoginSignUpSeMeEkranScreen, including the
/// current loginSignUpSeMeEkranModelObj
class LoginSignUpSeMeEkranController extends GetxController {
  Rx<LoginSignUpSeMeEkranModel> loginSignUpSeMeEkranModelObj =
      LoginSignUpSeMeEkranModel().obs;
}
