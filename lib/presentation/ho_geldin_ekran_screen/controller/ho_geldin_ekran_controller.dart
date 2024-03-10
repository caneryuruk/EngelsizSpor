import '../../../core/app_export.dart';
import '../models/ho_geldin_ekran_model.dart';

/// A controller class for the HoGeldinEkranScreen.
///
/// This class manages the state of the HoGeldinEkranScreen, including the
/// current hoGeldinEkranModelObj
class HoGeldinEkranController extends GetxController {
  Rx<HoGeldinEkranModel> hoGeldinEkranModelObj = HoGeldinEkranModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.loginSignUpSeMeEkranScreen,
      );
    });
  }
}
