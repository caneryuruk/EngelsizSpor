import '../../../core/app_export.dart';
import '../models/dm_engelli_container_model.dart';

/// A controller class for the DmEngelliContainerScreen.
///
/// This class manages the state of the DmEngelliContainerScreen, including the
/// current dmEngelliContainerModelObj
class DmEngelliContainerController extends GetxController {
  Rx<DmEngelliContainerModel> dmEngelliContainerModelObj =
      DmEngelliContainerModel().obs;
}
