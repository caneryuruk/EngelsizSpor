import 'package:engelsiz_spor/presentation/gonullu_ana_sayfasi_screen/controller/gonullu_ana_sayfasi_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GonulluAnaSayfasiScreen.
///
/// This class ensures that the GonulluAnaSayfasiController is created when the
/// GonulluAnaSayfasiScreen is first loaded.
class GonulluAnaSayfasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GonulluAnaSayfasiController());
  }
}
