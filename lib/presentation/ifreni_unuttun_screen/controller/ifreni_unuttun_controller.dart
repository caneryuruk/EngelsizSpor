import '../../../core/app_export.dart';
import '../models/ifreni_unuttun_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the IfreniUnuttunScreen.
///
/// This class manages the state of the IfreniUnuttunScreen, including the
/// current ifreniUnuttunModelObj
class IfreniUnuttunController extends GetxController {
  TextEditingController tenController = TextEditingController();

  Rx<IfreniUnuttunModel> ifreniUnuttunModelObj = IfreniUnuttunModel().obs;

  @override
  void onClose() {
    super.onClose();
    tenController.dispose();
  }
}
