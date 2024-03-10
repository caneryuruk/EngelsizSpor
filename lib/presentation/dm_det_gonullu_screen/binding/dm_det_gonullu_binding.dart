import 'package:engelsiz_spor/presentation/dm_det_gonullu_screen/controller/dm_det_gonullu_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DmDetGonulluScreen.
///
/// This class ensures that the DmDetGonulluController is created when the
/// DmDetGonulluScreen is first loaded.
class DmDetGonulluBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DmDetGonulluController());
  }
}
