import '../../../core/app_export.dart';
import '../models/sms_kodu_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SmsKoduScreen.
///
/// This class manages the state of the SmsKoduScreen, including the
/// current smsKoduModelObj
class SmsKoduController extends GetxController {
  TextEditingController languageController = TextEditingController();

  Rx<SmsKoduModel> smsKoduModelObj = SmsKoduModel().obs;

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
  }
}
