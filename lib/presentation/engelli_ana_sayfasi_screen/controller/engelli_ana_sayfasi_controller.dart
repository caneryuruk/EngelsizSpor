import '../../../core/app_export.dart';
import '../models/engelli_ana_sayfasi_model.dart';

/// A controller class for the EngelliAnaSayfasiScreen.
///
/// This class manages the state of the EngelliAnaSayfasiScreen, including the
/// current engelliAnaSayfasiModelObj
class EngelliAnaSayfasiController extends GetxController {
  Rx<EngelliAnaSayfasiModel> engelliAnaSayfasiModelObj =
      EngelliAnaSayfasiModel().obs;
}
