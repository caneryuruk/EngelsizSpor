import '../../../core/app_export.dart';
import '../models/dm_det_engelli_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DmDetEngelliScreen.
///
/// This class manages the state of the DmDetEngelliScreen, including the
/// current dmDetEngelliModelObj
class DmDetEngelliController extends GetxController {
  TextEditingController messageController = TextEditingController();

  Rx<DmDetEngelliModel> dmDetEngelliModelObj = DmDetEngelliModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
