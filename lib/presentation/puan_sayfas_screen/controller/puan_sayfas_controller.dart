import '../../../core/app_export.dart';
import '../models/puan_sayfas_model.dart';

/// A controller class for the PuanSayfasScreen.
///
/// This class manages the state of the PuanSayfasScreen, including the
/// current puanSayfasModelObj
class PuanSayfasController extends GetxController {
  Rx<PuanSayfasModel> puanSayfasModelObj = PuanSayfasModel().obs;
}
