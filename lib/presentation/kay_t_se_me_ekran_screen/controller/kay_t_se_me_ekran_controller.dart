import '../../../core/app_export.dart';
import '../models/kay_t_se_me_ekran_model.dart';

/// A controller class for the KayTSeMeEkranScreen.
///
/// This class manages the state of the KayTSeMeEkranScreen, including the
/// current kayTSeMeEkranModelObj
class KayTSeMeEkranController extends GetxController {
  Rx<KayTSeMeEkranModel> kayTSeMeEkranModelObj = KayTSeMeEkranModel().obs;
}
