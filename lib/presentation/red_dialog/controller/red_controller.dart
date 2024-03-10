import '../../../core/app_export.dart';
import '../models/red_model.dart';

/// A controller class for the RedDialog.
///
/// This class manages the state of the RedDialog, including the
/// current redModelObj
class RedController extends GetxController {
  Rx<RedModel> redModelObj = RedModel().obs;
}
