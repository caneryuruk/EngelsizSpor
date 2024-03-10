import 'package:engelsiz_spor/presentation/dm_gonullu_screen/controller/dm_gonullu_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DmGonulluScreen.
///
/// This class ensures that the DmGonulluController is created when the
/// DmGonulluScreen is first loaded.
class DmGonulluBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DmGonulluController());
  }
}
