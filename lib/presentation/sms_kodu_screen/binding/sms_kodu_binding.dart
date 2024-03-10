import 'package:engelsiz_spor/presentation/sms_kodu_screen/controller/sms_kodu_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SmsKoduScreen.
///
/// This class ensures that the SmsKoduController is created when the
/// SmsKoduScreen is first loaded.
class SmsKoduBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SmsKoduController());
  }
}
