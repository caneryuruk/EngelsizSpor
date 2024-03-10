import 'package:engelsiz_spor/presentation/giris_se_me_ekran_screen/controller/giris_se_me_ekran_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GirisSeMeEkranScreen.
///
/// This class ensures that the GirisSeMeEkranController is created when the
/// GirisSeMeEkranScreen is first loaded.
class GirisSeMeEkranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GirisSeMeEkranController());
  }
}
