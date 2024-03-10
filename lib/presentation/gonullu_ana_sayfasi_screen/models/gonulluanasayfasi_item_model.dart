import '../../../core/app_export.dart';

/// This class is used in the [gonulluanasayfasi_item_widget] screen.
class GonulluanasayfasiItemModel {
  GonulluanasayfasiItemModel({
    this.circleImage,
    this.amilZgRSizinle,
    this.profiliGRNtLemek,
    this.id,
  }) {
    circleImage = circleImage ?? Rx(ImageConstant.imgEllipse14660x60);
    amilZgRSizinle =
        amilZgRSizinle ?? Rx("Şamil Özgür sizinle basketbol oynamak istiyor!");
    profiliGRNtLemek =
        profiliGRNtLemek ?? Rx("Profili görüntülemek için tıklayınız.");
    id = id ?? Rx("");
  }

  Rx<String>? circleImage;

  Rx<String>? amilZgRSizinle;

  Rx<String>? profiliGRNtLemek;

  Rx<String>? id;
}
