import '../../../core/app_export.dart';
import '../models/frame_513821_model.dart';

/// A controller class for the Frame513821Screen.
///
/// This class manages the state of the Frame513821Screen, including the
/// current frame513821ModelObj
class Frame513821Controller extends GetxController {
  Rx<Frame513821Model> frame513821ModelObj = Frame513821Model().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;
}
