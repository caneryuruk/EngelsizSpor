import 'package:engelsiz_spor/presentation/ifre_de_i_tir_screen/controller/ifre_de_i_tir_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IfreDeITirScreen.
///
/// This class ensures that the IfreDeITirController is created when the
/// IfreDeITirScreen is first loaded.
class IfreDeITirBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IfreDeITirController());
  }
}
