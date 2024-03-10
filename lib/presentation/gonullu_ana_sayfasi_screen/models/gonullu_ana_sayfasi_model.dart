import '../../../core/app_export.dart';
import 'gonulluanasayfasi_item_model.dart';

/// This class defines the variables used in the [gonullu_ana_sayfasi_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class GonulluAnaSayfasiModel {
  Rx<List<GonulluanasayfasiItemModel>> gonulluanasayfasiItemList = Rx([
    GonulluanasayfasiItemModel(
        circleImage: ImageConstant.imgEllipse14660x60.obs,
        amilZgRSizinle: "Şamil Özgür sizinle basketbol oynamak istiyor!".obs,
        profiliGRNtLemek: "Profili görüntülemek için tıklayınız.".obs),
    GonulluanasayfasiItemModel(
        circleImage: ImageConstant.imgEllipse14660x60.obs,
        amilZgRSizinle: "Şamil Özgür sizinle basketbol oynamak istiyor!".obs,
        profiliGRNtLemek: "Profili görüntülemek için tıklayınız.".obs),
    GonulluanasayfasiItemModel(
        circleImage: ImageConstant.imgEllipse14660x60.obs,
        amilZgRSizinle: "Şamil Özgür sizinle basketbol oynamak istiyor!".obs,
        profiliGRNtLemek: "Profili görüntülemek için tıklayınız.".obs)
  ]);
}
