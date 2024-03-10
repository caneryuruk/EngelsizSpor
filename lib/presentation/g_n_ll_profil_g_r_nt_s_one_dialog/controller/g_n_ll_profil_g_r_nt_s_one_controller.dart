import '../../../core/app_export.dart';
import '../models/g_n_ll_profil_g_r_nt_s_one_model.dart';

/// A controller class for the GNLlProfilGRNtSOneDialog.
///
/// This class manages the state of the GNLlProfilGRNtSOneDialog, including the
/// current gNLlProfilGRNtSOneModelObj
class GNLlProfilGRNtSOneController extends GetxController {
  Rx<GNLlProfilGRNtSOneModel> gNLlProfilGRNtSOneModelObj =
      GNLlProfilGRNtSOneModel().obs;
}
