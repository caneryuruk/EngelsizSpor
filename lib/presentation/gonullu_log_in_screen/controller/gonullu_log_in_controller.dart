import '../../../core/app_export.dart';
import '../models/gonullu_log_in_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the GonulluLogInScreen.
///
/// This class manages the state of the GonulluLogInScreen, including the
/// current gonulluLogInModelObj
class GonulluLogInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  Rx<GonulluLogInModel> gonulluLogInModelObj = GonulluLogInModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    locationController.dispose();
  }
}
