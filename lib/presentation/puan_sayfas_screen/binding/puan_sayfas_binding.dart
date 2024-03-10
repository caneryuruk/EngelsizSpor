import 'package:engelsiz_spor/presentation/puan_sayfas_screen/controller/puan_sayfas_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PuanSayfasScreen.
///
/// This class ensures that the PuanSayfasController is created when the
/// PuanSayfasScreen is first loaded.
class PuanSayfasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PuanSayfasController());
  }
}
