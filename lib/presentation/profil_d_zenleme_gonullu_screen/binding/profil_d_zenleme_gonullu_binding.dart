import 'package:engelsiz_spor/presentation/profil_d_zenleme_gonullu_screen/controller/profil_d_zenleme_gonullu_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfilDZenlemeGonulluScreen.
///
/// This class ensures that the ProfilDZenlemeGonulluController is created when the
/// ProfilDZenlemeGonulluScreen is first loaded.
class ProfilDZenlemeGonulluBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilDZenlemeGonulluController());
  }
}
