import '../../../core/app_export.dart';
import '../models/gonullu_profili_model.dart';

/// A controller class for the GonulluProfiliScreen.
///
/// This class manages the state of the GonulluProfiliScreen, including the
/// current gonulluProfiliModelObj
class GonulluProfiliController extends GetxController {
  Rx<GonulluProfiliModel> gonulluProfiliModelObj = GonulluProfiliModel().obs;
}
