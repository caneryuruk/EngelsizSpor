import '../../../core/app_export.dart';
import '../models/engelli_profili_model.dart';

/// A controller class for the EngelliProfiliScreen.
///
/// This class manages the state of the EngelliProfiliScreen, including the
/// current engelliProfiliModelObj
class EngelliProfiliController extends GetxController {
  Rx<EngelliProfiliModel> engelliProfiliModelObj = EngelliProfiliModel().obs;
}
