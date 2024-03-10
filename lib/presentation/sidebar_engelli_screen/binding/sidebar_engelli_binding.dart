import 'package:engelsiz_spor/presentation/sidebar_engelli_screen/controller/sidebar_engelli_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SidebarEngelliScreen.
///
/// This class ensures that the SidebarEngelliController is created when the
/// SidebarEngelliScreen is first loaded.
class SidebarEngelliBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SidebarEngelliController());
  }
}
