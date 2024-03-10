import 'package:engelsiz_spor/presentation/ifreni_unuttun_screen/controller/ifreni_unuttun_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IfreniUnuttunScreen.
///
/// This class ensures that the IfreniUnuttunController is created when the
/// IfreniUnuttunScreen is first loaded.
class IfreniUnuttunBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IfreniUnuttunController());
  }
}
