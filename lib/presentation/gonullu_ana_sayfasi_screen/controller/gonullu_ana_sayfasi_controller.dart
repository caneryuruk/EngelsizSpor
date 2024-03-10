import '../../../core/app_export.dart';
import '../models/gonullu_ana_sayfasi_model.dart';

/// A controller class for the GonulluAnaSayfasiScreen.
///
/// This class manages the state of the GonulluAnaSayfasiScreen, including the
/// current gonulluAnaSayfasiModelObj
class GonulluAnaSayfasiController extends GetxController {
  Rx<GonulluAnaSayfasiModel> gonulluAnaSayfasiModelObj =
      GonulluAnaSayfasiModel().obs;
}
