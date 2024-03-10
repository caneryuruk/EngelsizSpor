import 'package:engelsiz_spor/presentation/kay_t_se_me_ekran_screen/controller/kay_t_se_me_ekran_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KayTSeMeEkranScreen.
///
/// This class ensures that the KayTSeMeEkranController is created when the
/// KayTSeMeEkranScreen is first loaded.
class KayTSeMeEkranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KayTSeMeEkranController());
  }
}
