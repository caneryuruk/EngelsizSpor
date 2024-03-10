import 'package:engelsiz_spor/presentation/sidebar_gonullu_screen/controller/sidebar_gonullu_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SidebarGonulluScreen.
///
/// This class ensures that the SidebarGonulluController is created when the
/// SidebarGonulluScreen is first loaded.
class SidebarGonulluBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SidebarGonulluController());
  }
}
