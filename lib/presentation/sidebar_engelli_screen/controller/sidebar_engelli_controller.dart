import '../../../core/app_export.dart';
import '../models/sidebar_engelli_model.dart';

/// A controller class for the SidebarEngelliScreen.
///
/// This class manages the state of the SidebarEngelliScreen, including the
/// current sidebarEngelliModelObj
class SidebarEngelliController extends GetxController {
  Rx<SidebarEngelliModel> sidebarEngelliModelObj = SidebarEngelliModel().obs;
}
