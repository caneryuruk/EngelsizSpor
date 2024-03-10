import 'package:engelsiz_spor/presentation/engeelli_profil_g_r_nt_s_screen/controller/engeelli_profil_g_r_nt_s_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EngeelliProfilGRNtSScreen.
///
/// This class ensures that the EngeelliProfilGRNtSController is created when the
/// EngeelliProfilGRNtSScreen is first loaded.
class EngeelliProfilGRNtSBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EngeelliProfilGRNtSController());
  }
}
