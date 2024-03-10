import '../../../core/app_export.dart';
import 'sidebarengelli_item_model.dart';

/// This class defines the variables used in the [sidebar_engelli_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SidebarEngelliModel {
  Rx<List<SidebarengelliItemModel>> sidebarengelliItemList = Rx([
    SidebarengelliItemModel(
        bowling: ImageConstant.imgCut.obs,
        bowling1: ImageConstant.imgMenu.obs,
        bowling2: "Bowling".obs),
    SidebarengelliItemModel(
        bowling: ImageConstant.imgBasketballHoop.obs,
        bowling1: ImageConstant.imgMenu.obs,
        bowling2: "Basketbol".obs)
  ]);
}
