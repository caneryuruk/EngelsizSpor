import '../../../core/app_export.dart';
import '../models/engeelli_profil_g_r_nt_s_model.dart';

/// A controller class for the EngeelliProfilGRNtSScreen.
///
/// This class manages the state of the EngeelliProfilGRNtSScreen, including the
/// current engeelliProfilGRNtSModelObj
class EngeelliProfilGRNtSController extends GetxController {
  Rx<EngeelliProfilGRNtSModel> engeelliProfilGRNtSModelObj =
      EngeelliProfilGRNtSModel().obs;
}
