import '../../../core/app_export.dart';

/// This class is used in the [dmgonullu_item_widget] screen.
class DmgonulluItemModel {
  DmgonulluItemModel({
    this.amilZgR,
    this.basketbol,
    this.id,
  }) {
    amilZgR = amilZgR ?? Rx("Şamil Özgür");
    basketbol = basketbol ?? Rx("Basketbol");
    id = id ?? Rx("");
  }

  Rx<String>? amilZgR;

  Rx<String>? basketbol;

  Rx<String>? id;
}
