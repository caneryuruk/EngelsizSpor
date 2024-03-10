import '../../../core/app_export.dart';
import '../models/sidebar_gonullu_model.dart';

/// A controller class for the SidebarGonulluScreen.
///
/// This class manages the state of the SidebarGonulluScreen, including the
/// current sidebarGonulluModelObj
class SidebarGonulluController extends GetxController {
  Rx<SidebarGonulluModel> sidebarGonulluModelObj = SidebarGonulluModel().obs;
}
