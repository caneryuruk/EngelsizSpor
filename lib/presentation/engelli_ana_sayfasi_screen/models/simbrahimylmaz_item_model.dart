import '../../../core/app_export.dart';

/// This class is used in the [simbrahimylmaz_item_widget] screen.
class SimbrahimylmazItemModel {
  SimbrahimylmazItemModel({
    this.simBrahimYLmaz,
    this.profiliGRNtLemek,
    this.id,
  }) {
    simBrahimYLmaz =
        simBrahimYLmaz ?? Rx("İsim: İbrahim Yılmaz\nSpor dalı: Basketbol");
    profiliGRNtLemek =
        profiliGRNtLemek ?? Rx("Profili görüntülemek için tıklayınız.");
    id = id ?? Rx("");
  }

  Rx<String>? simBrahimYLmaz;

  Rx<String>? profiliGRNtLemek;

  Rx<String>? id;
}
