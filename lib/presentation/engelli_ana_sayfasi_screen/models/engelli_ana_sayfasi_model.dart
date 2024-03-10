import '../../../core/app_export.dart';
import 'brahimylmazn_item_model.dart';
import 'simbrahimylmaz_item_model.dart';

/// This class defines the variables used in the [engelli_ana_sayfasi_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EngelliAnaSayfasiModel {
  Rx<List<BrahimylmaznItemModel>> brahimylmaznItemList = Rx([
    BrahimylmaznItemModel(
        brahimYLmazN: "İbrahim Yılmaz’ın cevabı bekleniyor...".obs),
    BrahimylmaznItemModel(
        brahimYLmazN: "İbrahim Yılmaz’ın cevabı bekleniyor...".obs)
  ]);

  Rx<List<SimbrahimylmazItemModel>> simbrahimylmazItemList = Rx([
    SimbrahimylmazItemModel(
        simBrahimYLmaz: "İsim: İbrahim Yılmaz\nSpor dalı: Basketbol".obs,
        profiliGRNtLemek: "Profili görüntülemek için tıklayınız.".obs),
    SimbrahimylmazItemModel(
        simBrahimYLmaz: "İsim: İbrahim Yılmaz\nSpor dalı: Basketbol".obs,
        profiliGRNtLemek: "Profili görüntülemek için tıklayınız.".obs),
    SimbrahimylmazItemModel(
        simBrahimYLmaz: "İsim: İbrahim Yılmaz\nSpor dalı: Basketbol".obs,
        profiliGRNtLemek: "Profili görüntülemek için tıklayınız.".obs),
    SimbrahimylmazItemModel(
        simBrahimYLmaz: "İsim: İbrahim Yılmaz\nSpor dalı: Basketbol".obs,
        profiliGRNtLemek: "Profili görüntülemek için tıklayınız.\n".obs)
  ]);
}
