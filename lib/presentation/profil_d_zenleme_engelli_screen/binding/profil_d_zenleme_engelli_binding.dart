import 'package:engelsiz_spor/presentation/profil_d_zenleme_engelli_screen/controller/profil_d_zenleme_engelli_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfilDZenlemeEngelliScreen.
///
/// This class ensures that the ProfilDZenlemeEngelliController is created when the
/// ProfilDZenlemeEngelliScreen is first loaded.
class ProfilDZenlemeEngelliBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilDZenlemeEngelliController());
  }
}
