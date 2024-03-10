import 'package:engelsiz_spor/presentation/ho_geldin_ekran_screen/controller/ho_geldin_ekran_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HoGeldinEkranScreen.
///
/// This class ensures that the HoGeldinEkranController is created when the
/// HoGeldinEkranScreen is first loaded.
class HoGeldinEkranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HoGeldinEkranController());
  }
}
