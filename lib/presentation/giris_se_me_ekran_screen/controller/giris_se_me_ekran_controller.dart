import '../../../core/app_export.dart';
import '../models/giris_se_me_ekran_model.dart';

/// A controller class for the GirisSeMeEkranScreen.
///
/// This class manages the state of the GirisSeMeEkranScreen, including the
/// current girisSeMeEkranModelObj
class GirisSeMeEkranController extends GetxController {
  Rx<GirisSeMeEkranModel> girisSeMeEkranModelObj = GirisSeMeEkranModel().obs;
}
