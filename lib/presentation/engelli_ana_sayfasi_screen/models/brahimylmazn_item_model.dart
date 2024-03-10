import '../../../core/app_export.dart';

/// This class is used in the [brahimylmazn_item_widget] screen.
class BrahimylmaznItemModel {
  BrahimylmaznItemModel({
    this.brahimYLmazN,
    this.id,
  }) {
    brahimYLmazN = brahimYLmazN ?? Rx("İbrahim Yılmaz’ın cevabı bekleniyor...");
    id = id ?? Rx("");
  }

  Rx<String>? brahimYLmazN;

  Rx<String>? id;
}
