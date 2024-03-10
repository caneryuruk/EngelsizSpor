import 'package:engelsiz_spor/presentation/g_n_ll_profil_g_r_nt_s_screen/controller/g_n_ll_profil_g_r_nt_s_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GNLlProfilGRNtSScreen.
///
/// This class ensures that the GNLlProfilGRNtSController is created when the
/// GNLlProfilGRNtSScreen is first loaded.
class GNLlProfilGRNtSBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GNLlProfilGRNtSController());
  }
}
