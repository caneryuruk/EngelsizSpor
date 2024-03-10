import '../../../core/app_export.dart';
import '../models/kabul_model.dart';

/// A controller class for the KabulDialog.
///
/// This class manages the state of the KabulDialog, including the
/// current kabulModelObj
class KabulController extends GetxController {
  Rx<KabulModel> kabulModelObj = KabulModel().obs;
}
