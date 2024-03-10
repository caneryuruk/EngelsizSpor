import '../../../core/app_export.dart';

/// This class is used in the [dmengelli_item_widget] screen.
class DmengelliItemModel {
  DmengelliItemModel({
    this.brahimYLmaz,
    this.basketbol,
    this.id,
  }) {
    brahimYLmaz = brahimYLmaz ?? Rx("İbrahim Yılmaz");
    basketbol = basketbol ?? Rx("Basketbol");
    id = id ?? Rx("");
  }

  Rx<String>? brahimYLmaz;

  Rx<String>? basketbol;

  Rx<String>? id;
}
