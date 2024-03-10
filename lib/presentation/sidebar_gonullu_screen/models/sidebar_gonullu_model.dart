import '../../../core/app_export.dart';
import 'sidebargonullu_item_model.dart';
import 'sidebargonullu1_item_model.dart';

/// This class defines the variables used in the [sidebar_gonullu_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SidebarGonulluModel {
  Rx<List<SidebargonulluItemModel>> sidebargonulluItemList = Rx([
    SidebargonulluItemModel(
        bowling: ImageConstant.imgCut.obs,
        bowling1: ImageConstant.imgMenu.obs,
        bowling2: "Bowling".obs)
  ]);

  Rx<List<Sidebargonullu1ItemModel>> sidebargonullu1ItemList = Rx([
    Sidebargonullu1ItemModel(
        jimnastik: ImageConstant.imgGymnastic.obs, jimnastik1: "Jimnastik".obs),
    Sidebargonullu1ItemModel(
        jimnastik: ImageConstant.img19737081.obs,
        jimnastik1: "Bungee Jumping".obs)
  ]);
}
