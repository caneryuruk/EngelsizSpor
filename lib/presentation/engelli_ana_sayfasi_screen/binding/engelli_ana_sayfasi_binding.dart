import 'package:engelsiz_spor/presentation/engelli_ana_sayfasi_screen/controller/engelli_ana_sayfasi_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EngelliAnaSayfasiScreen.
///
/// This class ensures that the EngelliAnaSayfasiController is created when the
/// EngelliAnaSayfasiScreen is first loaded.
class EngelliAnaSayfasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EngelliAnaSayfasiController());
  }
}
