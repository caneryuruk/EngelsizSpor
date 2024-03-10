import 'package:engelsiz_spor/presentation/dm_det_engelli_screen/controller/dm_det_engelli_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DmDetEngelliScreen.
///
/// This class ensures that the DmDetEngelliController is created when the
/// DmDetEngelliScreen is first loaded.
class DmDetEngelliBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DmDetEngelliController());
  }
}
