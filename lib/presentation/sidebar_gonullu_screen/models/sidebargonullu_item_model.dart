import '../../../core/app_export.dart';

/// This class is used in the [sidebargonullu_item_widget] screen.
class SidebargonulluItemModel {
  SidebargonulluItemModel({
    this.bowling,
    this.bowling1,
    this.bowling2,
    this.id,
  }) {
    bowling = bowling ?? Rx(ImageConstant.imgCut);
    bowling1 = bowling1 ?? Rx(ImageConstant.imgMenu);
    bowling2 = bowling2 ?? Rx("Bowling");
    id = id ?? Rx("");
  }

  Rx<String>? bowling;

  Rx<String>? bowling1;

  Rx<String>? bowling2;

  Rx<String>? id;
}
