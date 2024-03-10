import 'package:engelsiz_spor/presentation/frame_513821_screen/controller/frame_513821_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Frame513821Screen.
///
/// This class ensures that the Frame513821Controller is created when the
/// Frame513821Screen is first loaded.
class Frame513821Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Frame513821Controller());
  }
}
