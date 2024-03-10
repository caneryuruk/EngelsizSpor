import '../../../core/app_export.dart';

/// This class is used in the [sidebargonullu1_item_widget] screen.
class Sidebargonullu1ItemModel {
  Sidebargonullu1ItemModel({
    this.jimnastik,
    this.jimnastik1,
    this.id,
  }) {
    jimnastik = jimnastik ?? Rx(ImageConstant.imgGymnastic);
    jimnastik1 = jimnastik1 ?? Rx("Jimnastik");
    id = id ?? Rx("");
  }

  Rx<String>? jimnastik;

  Rx<String>? jimnastik1;

  Rx<String>? id;
}
