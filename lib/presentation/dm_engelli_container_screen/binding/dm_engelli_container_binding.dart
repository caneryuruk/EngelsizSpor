import 'package:engelsiz_spor/presentation/dm_engelli_container_screen/controller/dm_engelli_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DmEngelliContainerScreen.
///
/// This class ensures that the DmEngelliContainerController is created when the
/// DmEngelliContainerScreen is first loaded.
class DmEngelliContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DmEngelliContainerController());
  }
}
