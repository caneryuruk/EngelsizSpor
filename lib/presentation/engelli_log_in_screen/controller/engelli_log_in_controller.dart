import '../../../core/app_export.dart';
import '../models/engelli_log_in_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EngelliLogInScreen.
///
/// This class manages the state of the EngelliLogInScreen, including the
/// current engelliLogInModelObj
class EngelliLogInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  Rx<EngelliLogInModel> engelliLogInModelObj = EngelliLogInModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    locationController.dispose();
  }
}
